open Stdio.Out_channel

type value = [
  | `Token of string
]

let output_value outc = function
  | `Token value  -> output_string outc value

