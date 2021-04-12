defmodule Solution do

  def custom_length() do
      input = IO.read(:stdio, :all)
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)
      |> Enum.with_index

      find_length(input)
  end

  def find_length(list) when is_list(list) do
      len = List.last(list)
      |> elem(1)
      IO.puts len + 1
  end

end

Solution.custom_length
