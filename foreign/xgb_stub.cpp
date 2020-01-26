#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <sys/resource.h>
#include <caml/callback.h>
#include <caml/alloc.h>
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/custom.h>
#include <caml/fail.h>

#include <xgboost/data.h>
#include <xgboost/learner.h>
#include <xgboost/c_api.h>

#define fst(a) Field(a, 0)
#define snd(a) Field(a, 1)
#define max_fea (262139 * 3 + 18)

static int max_nr_attr = 64;
static unsigned int *indices;
static size_t indptr[2];
static float *data;

extern "C" {

static struct custom_operations booster_ops = {
  (char*)"xgbooster",
  custom_finalize_default,
  custom_compare_default,
  custom_hash_default,
  custom_serialize_default,
  custom_deserialize_default,
  custom_compare_ext_default
};

#define Booster_val(v) (*((BoosterHandle *) Data_custom_val(v)))
static value alloc_booster() {
  return (alloc_custom(&booster_ops, sizeof(BoosterHandle), 0, 1));
}

value read_predictor (value s) {
  CAMLparam1 (s);
  value b = alloc_booster();
  XGBoosterCreate(NULL, 0, &Booster_val(b));
  if (XGBoosterLoadModel(Booster_val(b), String_val(s)) != 0)
    caml_failwith("XGBoosterLoadModel");
  indices = (unsigned int*)malloc(max_nr_attr*sizeof(unsigned int));
  data = (float*)malloc(max_nr_attr*sizeof(float));
  CAMLreturn (b);
}

// Cannot be called predict, or it clashes with the liblinear one
value xpredict (value b, value l) {
  CAMLparam2 (b, l);
	int i = 0;
  for (; l != Val_emptylist; l = snd(l), ++i) {
    if (i>=max_nr_attr-2) {
      max_nr_attr *= 2;
      indices = (unsigned int*)realloc(indices, max_nr_attr*sizeof(unsigned int));
      data = (float*)realloc(data, max_nr_attr*sizeof(float));
    }
    indices[i] = Int_val(fst(fst(l)));
    data[i] = Int_val(snd(fst(l)));
    //printf ("@%i: %i:%.0f\n", i, indices[i], data[i]);
  }
  indptr[0] = 0; indptr[1] = i;
  DMatrixHandle h_predict;
  if (XGDMatrixCreateFromCSREx(indptr, indices, data, 2, i, max_fea, &h_predict) != 0)
    caml_failwith("XGDMatrixCreateFromCSREx");
  bst_ulong out_len;
  const float *res;
  if (XGBoosterPredict(Booster_val(b), h_predict, 0, 0, &out_len, &res) != 0)
    caml_failwith("XGBoosterPredict");
  XGDMatrixFree(h_predict);
  CAMLreturn (caml_copy_double(res[0]));
}

value x_mem(value unit) {
  CAMLparam1 (unit);
  struct rusage r_usage;
  getrusage(RUSAGE_SELF,&r_usage);
  CAMLreturn (Val_int(r_usage.ru_maxrss));
}

}
