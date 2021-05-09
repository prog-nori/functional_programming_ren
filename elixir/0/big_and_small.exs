defmodule BigAndSmall do
    def main() do
        rand = :rand.uniform
        str = if rand >= 0.5, do: "Big", else: "Small"
        IO.puts("value: #{Float.ceil(rand, 6)}: #{str}")
    end
end

BigAndSmall.main
