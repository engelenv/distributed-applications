defmodule Math do

    def smaller_range(x) when x>2, do: 2..(x-1)
    def smaller_range(x) when x<=2, do: []
    def prime?(x) do
        x>1 and smaller_range(x) |> Enum.all?(fn k -> rem(x, k) != 0 end)
    end
end 