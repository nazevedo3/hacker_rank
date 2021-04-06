defmodule FilterPosition do

  def filter_odd() do
      input = IO.read(:stdio, :all)
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)

      %{odd: odd, even: _even} =
      input
      |> Enum.with_index
      |> Enum.group_by(
          fn {_value, index} when rem(index, 2) != 0 -> :odd
             _                                       -> :even
      end,
      fn {n, _index} -> n end)
      Enum.map(odd, fn x -> IO.inspect x end)
  end
end

FilterPosition.filter_odd()
