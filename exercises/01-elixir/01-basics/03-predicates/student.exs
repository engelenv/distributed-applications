defmodule Numbers do
  def even?(t) do
    rem(t,2) == 0
  end

  def odd?(t) do
    rem(t,2) != 0
  end
end
