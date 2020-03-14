defmodule Math do
  def factorial(0), do: 1
  def factorial(x) when is_number(x) and x>0, do: x*factorial(x-1)

  def binomial(n,k) when is_number(n) and is_number(k), do: div(factorial(n), factorial(k)*factorial(n-k))
end
