defmodule FizzBuzz do
  def main(argv \\ nil) do
    n = if Enum.empty?(argv), do: 15, else: Enum.at(argv, 0)
      |> Integer.parse
      |> Tuple.to_list
      |> Enum.at(0)
    Enum.each(1..n, fn i ->
      IO.puts FizzBuzz.get_fizzbuzz(i)
    end)
  end

  def get_fizzbuzz(i) do
    case i do
      x when rem(x, 15) == 0 -> "FizzBuzz"
      x when rem(x, 5) == 0 -> "Buzz"
      x when rem(x, 3) == 0 -> "Fizz"
      _ -> i
    end
  end
end

FizzBuzz.main(System.argv)
