defmodule HelloTimes do
  #Enter your code here. Read input from STDIN. Print output to STDOUT
  def hello_worlds() do
    IO.read(:stdio, :line)
    |> String.to_integer
    |> do_hello_worlds
  end

  defp do_hello_worlds(number) when number > 0 and number <= 50 do
    IO.puts(String.duplicate("Hello World\n", number))
    end
  end

  HelloTimes.hello_worlds()
