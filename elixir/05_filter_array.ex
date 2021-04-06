defmodule FilterArray do

  def filter() do
      input = IO.read(:stdio, :all)
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)
      |> do_filter
  end

  def do_filter([number | rest] = _nums) do
      Enum.map(rest, fn x ->
          if x < number do
              IO.inspect x
          end
      end)
  end
end

FilterArray.filter()
