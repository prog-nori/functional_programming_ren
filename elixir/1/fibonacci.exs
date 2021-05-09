defmodule Fibonacci do
  def main(argv \\ nil) do
    n = if Enum.empty?(argv), do: 20, else: Enum.at(argv, 0)
      |> Integer.parse
      |> Tuple.to_list
      |> Enum.at(0)
    Enum.each(1..n, fn i ->
      if i == n do
        IO.puts "#{Fibonacci.get_fibonacci(i)}"
      else
        IO.write "#{Fibonacci.get_fibonacci(i)} "
      end
    end)
  end

  def get_fibonacci(i) do
    case i do
      1 -> 1
      2 -> 1
      _ -> Fibonacci.get_fibonacci(i - 1) + Fibonacci.get_fibonacci(i - 2)
    end
  end
end

Fibonacci.main(System.argv)
