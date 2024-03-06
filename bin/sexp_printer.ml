open Base
open Sexplib
open Stdio.In_channel

let config = Sexp_pretty.Config.default
let prepend_newline s = "\n" ^ s

let () =
  stdin |> input_all |> Sexp.of_string
  |> Sexp_pretty.pretty_string config
  |> prepend_newline |> Stdio.Out_channel.print_string
