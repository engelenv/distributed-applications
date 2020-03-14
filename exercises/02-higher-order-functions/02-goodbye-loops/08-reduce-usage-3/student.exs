defmodule Math do
  def factorial(x) do
    Enum.reduce(1..x, 1, fn x, accumulator-> x*accumulator end)
    #HEEL BELANGRIJK ER EERST EEN LIJST VAN TE MAKEN!!!!
  end
end
