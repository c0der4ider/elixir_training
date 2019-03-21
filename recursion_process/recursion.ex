defmodule Recursion do
  def sum_list([head | tail], acc) do
    sum_list(tail, acc + head)
  end

  def sum_list([], acc) do
    acc
  end
end

IO.puts Recursion.sum_list([1, 2, 3], 0) #=> 6
