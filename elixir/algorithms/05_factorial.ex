defmodule Factorial do

  def calculate(number) do
    do_calculate(number, 1)
  end

  defp do_calculate(number, total) when number > 0 do
    do_calculate(number - 1, total * number)
  end

  defp do_calculate(0 = _number, total), do: IO.puts total

end

Factorial.calculate(4)
Factorial.calculate(5)
Factorial.calculate(6)
Factorial.calculate(7)
