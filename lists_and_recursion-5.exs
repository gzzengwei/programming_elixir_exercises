defmodule MyList do
  def all?([head| []], func) do
    func.(head)
  end

  def all?([head | tail], func) do
    func.(head) && all?(tail, func)
  end

  def each([head | []], func) do
    func.(head)
  end

  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end

  def filter([head | []], func) do
    if func.(head) do
      [head]
    else
      []
    end
  end

  def filter([head | tail], func) do
    if func.(head) do
      [head]
    else
      []
    end ++ filter(tail, func)
  end

  def split(list, 0) do
    { [], list }
  end

  def split(list, count) when count > 0 do
    _split(count, [], list)
  end

  def split(list, count) when count < 0 do
    reverse_count = case (length(list) + count) do
                      x when (x > 0) -> x
                      x when (x <= 0) -> 0
                    end
    _split(reverse_count, [], list)
  end

  defp _split(_, list, []) do
    { list, [] }
  end

  defp _split(count, header, tailer) when count == length(header) do
    { header, tailer }
  end

  defp _split(count, header, [head | tail]) do
    _split(count, header ++ [head], tail)
  end

  def take(list, count) when count > 0 do
    _take(count, [], list)
  end

  def take(list, count) when count <= 0 do
    reverse_count = case (length(list) + count) do
                      x when (x > 0) -> abs(count)
                      x when (x <= 0) -> length(list)
                    end
    _reverse_take(reverse_count, list, [])
  end

  defp _take(_, header, []) do
    header
  end

  defp _take(count, header, _) when count == length(header) do
    header
  end

  defp _take(count, header, [head | tail]) do
    _take(count, header ++ [head], tail)
  end

  defp _reverse_take(count, header, _) when count == length(header) do
    header
  end

  defp _reverse_take(count, [head | tail], tailer) do
    _reverse_take(count, tail, [head | tailer])
  end
end
