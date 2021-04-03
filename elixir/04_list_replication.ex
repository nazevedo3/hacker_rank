defmodule Replicate do

  def replicate_list() do
      rep = IO.read(:stdio, :line)
      |> String.trim
      |> String.to_integer

      numbers = IO.read(:stdio, :all)
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)
      |> Enum.map(fn x -> List.duplicate(x, rep) end)
      |> List.flatten
      |> Enum.map(fn x -> IO.puts x end)
      numbers
  end
end

Replicate.replicate_list()
