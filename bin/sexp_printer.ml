open Base
open Sexplib
open Stdio
open Stdio.In_channel

let config = Sexp_pretty.Config.default

let () =
  stdin |> input_all |> Sexp.of_string
  |> Sexp_pretty.pp_out_channel config stdout
