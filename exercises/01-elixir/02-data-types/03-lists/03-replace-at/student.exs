defmodule Util do
  def replace_at([_|t], 0, item) do
    [item|t]
  end

  def replace_at([h|t], index, item) do
    [h|replace_at(t,(index-1),item)]
  end
end


