%% Contains file name formatting functions.


% Produces a suitable name for the output file based on the current date
% get_output_file(+Dir,+InFile,-OutFile)
get_output_file(Dir,InFile,OutFile):-
    get_time(T), stamp_date_time(T, date(Y,Mo, D, H, Min, Sec, _, _, _), 'UTC'),
    Sec2 is round(Sec),
    format(atom(TimeString), "~d_~d_~d_~d_~d_~d", [Y, Mo, D, H, Min, Sec2]),

    split_string(InFile, "/", "/", FileParts),
    last(FileParts,FileName),
    split_string(FileName,".", ".",[Name|_]),

    format(atom(OutFile), "~w/~w_~w.json", [Dir, Name, TimeString]).


% Produces a suitable name for the output clause file
% get_clause_file(+Dir,+InFile,-OutFile)
get_clause_file(Dir,InFile,OutFile):-
    split_string(InFile, "/", "/", FileParts),
    last(FileParts,FileName),
    split_string(FileName,".", ".",[Name|_]),

    format(atom(OutFile), "~w/~w.txt", [Dir, Name]).