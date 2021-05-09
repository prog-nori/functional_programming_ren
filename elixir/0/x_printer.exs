defmodule XPrinter do
    def main() do
        n = 10
        Enum.each(1..(n - 1), fn i ->
            XPrinter.print_rows(i, n)
        end)
    end

    def print_rows(i, n) do
        get_char = fn x, y -> if x == y || n - y == x, do: "X", else: "." end
        Enum.each(1..(n - 1), fn j ->
            char = get_char.(i, j)
            if j == n - 1 do
                IO.puts "#{char}"
            else
                IO.write "#{char}"
            end
        end)
    end
end

XPrinter.main
