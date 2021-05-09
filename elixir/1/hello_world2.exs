defmodule HelloWorld2 do
    def main(argv \\ []) do
        name = if argv |> Enum.empty?, do: "World", else: Enum.at(argv, 0)
        IO.puts "Hello, #{name}"
    end

    def get_list(argv) do
        IO.inspect(argv)
    end
end

HelloWorld2.main(System.argv())
