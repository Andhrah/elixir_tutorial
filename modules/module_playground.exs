defmodule ModulePlayground do
  import IO, only: [puts: 1]
  import Kernel, except: [inspect: 1]

  alias ModulePlayground.Misc.Util.Math, as: MyMath

  require Integer

  def say_here do
    inspect "I'm Here"
  end

  def inspect(param1) do
    puts "Starting Output"
    puts param1
    puts "Ending Output"
  end

  # for this function print_sum to work,
  # call this command "import_file("misc_util_math.exs")" on iex
  def print_sum do
    MyMath.add(1, 7)
  end

  def print_is_even(num) do
    puts "Is #{num} even? #{Integer.is_even(num)}"
  end
end
