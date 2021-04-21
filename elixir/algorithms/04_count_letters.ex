defmodule CountLetters do

  def count(string) when is_binary(string) do
    string
      |> String.graphemes
      |> Enum.reduce(%{}, fn char, acc ->
        Map.update(acc, char, 1, & &1 +1)
      end)
      |> IO.inspect
  end

end

CountLetters.count("hello world")
