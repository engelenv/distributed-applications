defmodule Shop do
  def discount(:standard), do: &(&1)
  def discount(:bronze), do: &(&1*0.95)
  def discount(:silver), do: &(&1*0.9)
  def discount(:gold), do: &(&1*0.8)
end
