defmodule Solution do

  def main() do
    number = IO.read(:stdio, :line)
      |> String.to_integer

    list_of_elements = for nums <- 1..number, do: nums
    IO.inspect list_of_elements
  end
end

Solution.main
