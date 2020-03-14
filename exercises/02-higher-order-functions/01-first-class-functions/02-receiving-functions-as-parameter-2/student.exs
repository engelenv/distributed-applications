defmodule Functions do
  def nest(functions, 0, number), do: number

  def nest(functions, times, number) do
    nest(functions, (times-1), functions.(number))
  end
end
