defmodule Math do
  def sum(xs) do
    xs |> Enum.reduce(0, fn x, acc -> x+acc end)
  end
end