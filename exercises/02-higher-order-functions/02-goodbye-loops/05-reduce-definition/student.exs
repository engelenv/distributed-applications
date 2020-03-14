defmodule Util do
  def reduce([], init, f), do: init
  def reduce([h|t], init, f) do
    reduce(t, f.(h, init), f)
  end
end
