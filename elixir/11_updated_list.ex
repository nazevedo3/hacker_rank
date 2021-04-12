defmodule Update do
  def get_input() do
      input = IO.read(:stdio, :all)
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)

      abs_value(input)
  end

  def abs_value(numbers_list) do
      Enum.map(numbers_list, fn x -> IO.inspect abs(x) end)
  end
end

Update.get_input
