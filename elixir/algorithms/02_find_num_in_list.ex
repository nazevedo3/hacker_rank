defmodule FindNum do

  def find(number, list) when is_list(list) and is_number(number) do
    do_find(number, list)
  end

  defp do_find(number, [head | tail])  do
    cond do
      number == head -> IO.puts true
      true -> do_find(number, tail)

    end
  end

  defp do_find(_number, _list), do: IO.puts false

end

FindNum.find(2, [1,2,3,4,5])
FindNum.find(8, [1,2,3,4,5])
