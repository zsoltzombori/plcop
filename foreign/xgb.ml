type booster;;
external c_read_model : string -> booster = "read_predictor";;
external c_predict : booster -> (int * int) list -> float = "xpredict";;
external c_mem : unit -> int = "x_mem";;

let read_model s = Some (c_read_model s);;
let predict b l =
  match b with None -> 1. | Some b -> c_predict b l;;
