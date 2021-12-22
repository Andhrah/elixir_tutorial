defmodule Sample.Calendar do
  # Elixir doesn't have an else/if value, below is one way to handle else if in elixir,
  # And this reason for this, isn't oversight, but to gently guide you to more functional approach.

  # Since this code is hard to read lets consider it as code smell, so there has to be a better way - the cond keyword

  # Test out the functions by running the following code in the terminal,
  # iex "day_of_week.exs" press enter and then input Sample.DayOfWeek.day_abbreviation(:Saturday)

  def day_abbreviation(day) do
    if day == :Monday do
      'M'
    else
      if day == :Tuesday do
        'Tu'
      else
        if day == :Wednesday do
          'W'
        else
          if day == :Thursday do
            'Th'
          else
            if day == :Friday do
              'F'
            else
              if day == :Saturday do
                'Sa'
              else
                'Su'
              end
            end
          end
        end
      end
    end
  end

  # the cond macro keyword value
  def day_abbreviation2(day) do
    cond do
      day == :Monday -> 'M'
      day == :Tuesday -> 'Tu'
      day == :Wednesday -> 'W'
      day == :Thursday -> 'Th'
      day == :Friday -> 'F'
      day == :Saturday -> 'Sa'
      day == :Sunday -> 'Su'
      true -> 'Invalid day'
    end
  end

  # pattern matching functions
  def day_abbreviation3(:Monday), do: 'M'
  def day_abbreviation3(:Tuesday), do: 'Tu'
  def day_abbreviation3(:Wednesday), do: 'W'
  def day_abbreviation3(:Thursday), do: 'Th'
  def day_abbreviation3(:Friday), do: 'F'
  def day_abbreviation3(:Saturday), do: 'Sa'
  def day_abbreviation3(:Sunday), do: 'Su'
  def day_abbreviation3(_), do: 'Invalid Day'

  # the case construct
  def day_abbreviation4(day) do
    case day do
      :Monday -> 'M'
      :Tuesday -> 'Tu'
      :Wednesday -> 'W'
      :Thursday -> 'Th'
      :Friday ->   'F'
      :Saturday -> 'Sa'
      :Sunday -> 'su'
      _ -> 'Ivalid day'
    end
  end

  # case construct, pattern matching and guard clause method
  def describe_date(date) do
    case date do
      {1, _,  _} -> 'Brand new month!'
      {25, 12, _} -> 'Merry Christmas'
      {25, month, _} -> 'Only #{12 - month} more months'
      {31, 10, 1517} -> 'The reformation is starting'
      {31, 10, _} -> 'Happy Hallowen'
      {_, month, _} when month <= 12 -> 'Just an average day'
      {_, _, _} -> 'Invalid month'
    end
  end
end

IO.puts Sample.Calendar.day_abbreviation3(:Thursday)
IO.puts Sample.Calendar.day_abbreviation2(:Wednesday)
IO.puts Sample.Calendar.day_abbreviation3(:Tuesday)
IO.puts Sample.Calendar.day_abbreviation4(:Monday)
IO.puts Sample.Calendar.describe_date({1, 23, 2019})
