defmodule Numbers do
  def even?(t) when is_number(t) do
    rem(t,2) == 0
  end

  def odd?(t) when is_number(t) do
    rem(t,2) != 0
  end
end
