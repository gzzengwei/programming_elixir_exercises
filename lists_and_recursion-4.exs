defmodule MyList do
  def span(finish, finish) do
    [finish]
  end

  def span(from, to) do
    [from | span(from + 1, to)]
  end
end
