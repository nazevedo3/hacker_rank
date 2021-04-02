defmodule SolveMeFirst do
  #Enter your code here. Read input from STDIN. Print output to STDOUT
  num_one = IO.read(:stdio, :line) |> String.trim |> String.to_integer
  num_two = IO.read(:stdio, :line) |> String.to_integer
  IO.puts num_one + num_two
  end
