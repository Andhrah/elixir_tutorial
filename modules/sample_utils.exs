defmodule Sample.Utils do
  def square(num) do
    num * num
  end

  def sum(num, acc) do
    acc + num
  end

  # function that calls another function - `f`
  def custom_func(a, f) do
    # To call an anonymous function, use a dot between the function name and the parenthese.
    f.(a)
  end
end