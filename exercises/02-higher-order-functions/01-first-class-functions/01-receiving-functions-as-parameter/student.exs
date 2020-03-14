defmodule Functions do
  def twice(function, times) do
    function.(function.(times))
  end
end
