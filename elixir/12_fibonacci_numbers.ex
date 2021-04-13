defmodule Solution do

  def main() do
      IO.read(:line)
      |> String.trim
      |> String.to_integer
      |> fib
      |> IO.write
  end

  def fib(n) when n in [0,1], do: 0
  def fib(2), do: 1
  def fib(n), do: fib(n-1) + fib(n-2)

end


Solution.main()
