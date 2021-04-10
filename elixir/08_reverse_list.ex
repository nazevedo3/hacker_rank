defmodule ReverseList do

  def main() do
      input = IO.read(:stdio, :all)
      |> String.split("\n", trim: true)
      |> Enum.map(&String.to_integer/1)
      |> Enum.reverse
     main(input)
  end

  def main([head | tail]) do
      IO.inspect head
      main(tail)
  end

  def main([]), do: 0
end

ReverseList.main()
