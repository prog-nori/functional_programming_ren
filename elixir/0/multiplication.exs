defmodule Multiplication do
    def main() do
        Multiplication.print_row_title()
        Enum.each(1..9, fn(i) ->
            Multiplication.kuku_rows(Stream.iterate(1, &(&1 + 1))
            |> Enum.take(9), i)
        end)
    end

    def kuku_rows(rows, col) do
        [head | tail] = rows
        result = head * col
        formatted_string = Multiplication.get_formatted_number(result, 2, " ")
        if tail |> length > 0 do
            if head == 1 do
                IO.write "#{col} "
            end
            IO.write "#{formatted_string} "
            Multiplication.kuku_rows(tail, col)
        else
            IO.puts "#{formatted_string}"
        end
    end

    def get_formatted_number(a_number, number_of_digits, padding) do
        a_number
        |> Integer.to_string
        |> String.pad_leading(number_of_digits, padding)
    end

    def print_row_title() do
        Enum.each(0..9, fn(i) ->
            str = if i ==0, do: " ", else: Multiplication.get_formatted_number(i, 2, " ")
            if i < 9 do
                IO.write "#{str} "
            else
                IO.puts str
            end
        end)
    end
end

Multiplication.main
