defmodule MyList do
  def caesar([], _) do
    0
  end

  def caesar([head|tail], n) do
    added = head + n
    if added > 122 do
      122 + caesar(tail, n)
    else
      added + caesar(tail, n)
    end
  end
end
