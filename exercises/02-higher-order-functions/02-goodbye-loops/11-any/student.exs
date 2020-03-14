defmodule Grades do
  def any_tolerable?(grades) do
    Enum.any?(grades, fn x -> x >= 8 and x < 10 end)
  end
end