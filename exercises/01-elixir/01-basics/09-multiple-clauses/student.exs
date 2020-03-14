defmodule Numbers do
  def abs(x) when x >= 0, do: x
  def abs(x) when x < 0, do: -x
end
