defmodule Cards do
  def higher?(x) when is_number(x), do: x
  def higher?(:jack), do: 11
  def higher?(:queen), do: 12
  def higher?(:king), do: 13
  def higher?(:ace), do: 14

  def higher?(x, y), do: higher?(x) > higher?(y)
end
