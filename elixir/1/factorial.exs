defmodule Factorial do
  def main(argv \\ nil) do
    n = Enum.at(argv, 0)
        |> Integer.parse
        |> Tuple.to_list
        |> Enum.at(0)
    if n do
      factorial = Factorial.get_factorial(n)
      IO.puts "#{n} != #{factorial}"
    else
      IO.puts "引数がありません。"
    end
  end

  def get_factorial(n) do
    if n > 3 do
      n * Factorial.get_factorial(n - 1)
    else
      n * 2
    end
  end
end

Factorial.main(System.argv)
