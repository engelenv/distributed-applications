defmodule Util do
  def first([head|_]), do: head

  def second([_|tail]), do: first(tail)

  def third([_, _ |tail]), do: first(tail)

  def last([last]), do: last
  def last([_|tail]), do: last(tail)

  def size([]), do: 0
  def size([_|t]), do: 1+ size(t)

end
