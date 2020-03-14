defmodule Fibonacci do
  def fib(0) do
    0
  end

  def fib(1) do
    1
  end

  def fib(x) when is_number(x) and x >= 2 do
    fib(x-2) + fib(x-1)
  end
end
