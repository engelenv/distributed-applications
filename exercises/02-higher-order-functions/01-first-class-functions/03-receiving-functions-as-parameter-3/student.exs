defmodule Functions do
  def compose([], x), do: x
  def compose([h|t],x) do
    compose(t, h.(x))
  end
end
