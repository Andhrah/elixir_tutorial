defmodule Sample.Recursion do
  defp get_sentence(2) do
    
  end

  defp get_sentence(1) do
    
  end

  defp get_sentence(number) do
    
  end

  def lyrics(), do: lyrics(100..1)
  def lyrics(first..last) when first <= last, 
    do: get_sentence(first)
  def lyrics(first..last), 
    do: get_sentence(first) <> lyrics(first -1..last)
    
  end
    
  end
end