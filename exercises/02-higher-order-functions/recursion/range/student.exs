defmodule Exercise do
  def range(a, b) when a < b, do: Enum.to_list(a..(b-1))
  def range(_, _), do: []
end