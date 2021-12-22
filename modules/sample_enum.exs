defmodule Sample.Enum do
  import Kernel, except: [length: 1]

  # To run the fuctions below run the following in your terminal
  # iex "sample_enum.exs" press enter then,

  # def first(list) when length(list) == 0, do: nil
  # def first(list, val \\ nil)
  # def first([head | _], _) do
  #   head
  # end

  # def first([], val), do: val

  def first(list) do
    if(length(list) === 0) do
      nil
    else
      hd(list)
    end
  end

  def add(list, val \\ 0) do
    trace(val)
    [val | list]
  end

  defp trace(str) do
    IO.puts('The value  passed in was #{str}')
  end

  # custom map implementation,
  # However, I didn't need to write my own map as there is inbuilt Enum.map. The map function is just a good illustration of how recursion works in Elixir.

  # first I pattern match my list, getting both a head and a tail
  # I then accept a function f. I take those three items and construct a new list
  # The first item in my list is the result of passing the head to the function specified.
  # The remainder of  the list is calling map on the tail, this happens until the remmaing list is an empty list.

  
  def map([], _), do: []
  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end

  def length([]), do: 0

  # body recursion
  def length([_ | tail]), do: 1 + length(tail)

  # tail recursion, this will not cause a stack overflow
  def other_length([_ | tail]), do: other_length(tail,1)
  def other_length([],len), do: len
  def other_length([_ | tail], len), do: other_length(tail, len + 1)
            
end 