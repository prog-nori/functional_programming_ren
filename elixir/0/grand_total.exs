defmodule GrandTotal do
    def main() do
        Enum.each([10, 100, 1000], fn x ->
            IO.puts(GrandTotal.sigma(x))
        end)
    end

    def sigma(val) do
        if val > 0 do
            val + GrandTotal.sigma(val - 1)
        else
            val
        end
    end
end

GrandTotal.main