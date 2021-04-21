defmodule FizzBuzz do

  def fb(number) when rem(number, 3) == 0 and rem(number, 5) == 0 do
    IO.puts "Fizz Buzz"
  end

  def fb(number) when rem(number, 3) == 0 do
    IO.puts "Buzz"
  end

  def fb(number) when rem(number, 5) == 0 do
    IO.puts "Fizz"
  end

  def fb(number) do
    IO.puts number
  end

end

Enum.map(1..50, fn x -> FizzBuzz.fb(x) end)
