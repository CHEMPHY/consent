
(* output MOP2D atom environments; sorted by decreasing frequency given
   a database of molecules (a big .mol2 file) *)

open Printf

module Cons = Consent
module L = MyList
module Mol = Molecule
module Ht = BatHashtbl
module StringSet = BatSet.String
module Utls = MyUtils

let main () =
  let input_fn = ref "" in
  let usage_message = sprintf "usage:\n%s -i molecules.mol2\n" Sys.argv.(0) in
  Arg.parse
    ["-i", Arg.Set_string input_fn, "<filename.mol2> molecules"]
    (fun arg -> raise (Arg.Bad ("Bad argument: " ^ arg)))
    usage_message;
  Utls.with_in_file !input_fn (fun input ->
      let counter = ref 0 in
      let ht = Ht.create 11 in
      try
        while true do
          let m = Mol2.read_one counter input in
          if !counter mod 10000 = 0 then
            eprintf "%d molecules seen\r%!" !counter; (* user feedback *)
          let mop2d = Mini_mol.mop2d_encode m in
          L.iter (fun env ->
              try
                Ht.modify env ((+) 1) ht
              with Not_found ->
                Ht.add ht env 1
            ) mop2d
        done
      with End_of_file ->
          let key_values = Ht.to_list ht in
          Log.info "read %d from %s" !counter !input_fn;
          let sorted = L.sort (fun (_, v1) (_, v2) -> BatInt.compare v2 v1) key_values in
          L.iter (fun (k, v) ->
              printf "%s %d\n" (Mop2d_env.to_string k) v
            ) sorted
    )

let () = main ()
