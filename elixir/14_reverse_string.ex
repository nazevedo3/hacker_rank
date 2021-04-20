defmodule ReverseString do

  def reverse(word) when is_binary(word) do
    word
    |> String.codepoints
    |> do_reverse([])
  end

  defp do_reverse([first | last], new) do
    do_reverse(last, [first | new])
  end

  defp do_reverse([], new), do: IO.inspect Enum.join(new)

end

ReverseString.reverse("hello world")
