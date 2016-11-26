defmodule MyList do
  def max([]), do: 0

  def max([head|tail]) do
    if head > max(tail) do
      head
    else
      max(tail)
    end
  end
end
