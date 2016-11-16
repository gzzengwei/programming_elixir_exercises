defmodule MyGCD do
  def gcd(x, 0), do: x

  def gcd(x, y) when (x > 0 and y > 0) do
    gcd(y, rem(x, y))
  end
end
