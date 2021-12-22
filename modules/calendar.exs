defmodule Sample.Calendar do
  # Run the following command on iex(terminal) to run the code.
  # iex "calendar.exs" press enter, then Sample.Calendar.is_leap_year(1600)
  def is_leap_year(year) when rem(year, 400) == 0, do: true
  def is_leap_year(year) when rem(year, 100) == 0, do: false
  def is_leap_year(year) when rem(year, 4) == 0, do: true
  def is_leap_year(year), do: false 
end
