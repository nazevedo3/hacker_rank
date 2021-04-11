defmodule OddElements do
  import Integer, only: [is_odd: 1]

  def odd_only() do
      numbers = IO.read(:stdio, :all)
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)

      do_odd_only(numbers, 0)
  end

  def do_odd_only([head | tail], sum) when is_odd(head) do
      do_odd_only(tail, head + sum)
  end

  def do_odd_only([_head | tail], sum) do
      do_odd_only(tail, sum)
  end

  def do_odd_only([], sum), do: IO.puts sum

end

OddElements.odd_only()
