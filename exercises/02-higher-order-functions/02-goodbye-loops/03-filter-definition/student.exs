defmodule Util do
  def filter([], predicate), do: []
  def filter([h|t], predicate) do
    pred = predicate.(h)

    if pred do
      [h|filter(t, predicate)]
    else
      filter(t, predicate)
    end

  end
end
