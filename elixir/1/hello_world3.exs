defmodule HelloWorld3 do
  def main(argv \\ []) do
    HelloWorld3.say_greeting(Enum.at(argv, 0))
  end

  def say_greeting(item \\ nil) do
    case item do
      nil -> HelloWorld3.hello("World")
      "World" -> HelloWorld3.hi(item)
      _ -> HelloWorld3.hello(item)
    end
  end

  def hello(name) do
    IO.puts "Hello, #{name}"
  end

  def hi(name) do
    IO.puts "Hi, #{name}"
  end

  def get_list(argv) do
    IO.inspect(argv)
  end
end

HelloWorld3.main(System.argv())
