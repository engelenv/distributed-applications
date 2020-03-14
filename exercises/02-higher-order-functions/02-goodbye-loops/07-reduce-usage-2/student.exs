defmodule Util do
  def count(xs, predicate) do
    Enum.reduce(xs, 0, fn x, accumulator->
      if predicate.(x) do
        accumulator + 1
      else
        accumulator
      end

    end)
  end
end
