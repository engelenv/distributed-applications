defmodule Setup do
  @script "shared.exs"

  def setup(directory \\ ".") do
    path = Path.join(directory, @script)

    if File.exists?(path) do
      Code.require_file(path)
      Shared.setup(__DIR__)
    else
      setup(Path.join(directory, ".."))
    end
  end
end

Setup.setup


defmodule Tests do
  use ExUnit.Case, async: true
  import Shared

  # first
  check that: Util.first([1]), is_equal_to: 1
  check that: Util.first([2]), is_equal_to: 2
  check that: Util.first([3, 4, 5]), is_equal_to: 3

  # second
  check that: Util.second([1, 2]), is_equal_to: 2
  check that: Util.second([1, 3]), is_equal_to: 3
  check that: Util.second([3, 4, 5, 6]), is_equal_to: 4

  # third
  check that: Util.third([1, 2, 3]), is_equal_to: 3
  check that: Util.third([1, 3, 4]), is_equal_to: 4
  check that: Util.third([3, 4, 5, 6]), is_equal_to: 5

  # last
  check that: Util.last([1, 2, 3]), is_equal_to: 3
  check that: Util.last([1, 3, 4]), is_equal_to: 4
  check that: Util.last([3, 4, 5, 6]), is_equal_to: 6
  check that: Util.last([1, 2, 3, 4, 5, 6, 10]), is_equal_to: 10
  check that: Util.last([1, 2, 3, 4, 5, 6, 10, :a]), is_equal_to: :a

  # size
  check that: Util.size([]), is_equal_to: 0
  check that: Util.size([:x]), is_equal_to: 1
  check that: Util.size([:x, :y]), is_equal_to: 2
  check that: Util.size([1, 2, 3, 4]), is_equal_to: 4
  check that: Util.size([1, 2, 3, 4, 5]), is_equal_to: 5
  check that: Util.size([5, 5, 5, 5, 5, 5]), is_equal_to: 6
end
