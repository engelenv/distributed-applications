defmodule Util do
  def frequencies(xs) do
    Enum.reduce(xs, %{}, fn x, accumulator->
      Map.update(accumulator, x, 1, fn x -> x+1 end)  
    end)
  end
end
