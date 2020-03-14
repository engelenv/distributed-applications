defmodule Util do
  def count([], predicate), do: 0
  def count([h|t], predicate) do
    pred = predicate.(h)

    if pred do
      1 + count(t, predicate)
    else
      count(t, predicate)
    end

  end
end
