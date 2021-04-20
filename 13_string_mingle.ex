defmodule Mingle do

  def combine([], [], str), do: IO.puts str

  def combine([h1 | t1], [h2 | t2], str) do
      combine(t1, t2, str <> h1 <> h2)
  end

  def main() do
      l1 = IO.read(:stdio, :line) |> String.trim |> String.codepoints
      l2 = IO.read(:stdio, :line) |> String.trim |> String.codepoints

      combine(l1, l2, "")
  end
end

Mingle.main
