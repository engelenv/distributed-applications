defmodule Cards do
  def numeric(k) when is_number(k), do: k
  def numeric(:jack), do: 11
  def numeric(:queen), do: 12
  def numeric(:king), do: 13
  def numeric(:ace), do: 14


  def higher?({v1,suit},{v2,suit}, _), do: numeric(v1) > numeric(v2)
  def higher?({v1,suit1},{v2,suit2}, suit2) when suit1 != suit2, do: false
  def higher?(_,_ , _), do: true

end
