defmodule LeapYear do
    def main() do
        Enum.each([2016, 2000, 2004, 2100, 2015, 1900], fn year ->
            leap_year = LeapYear.get_leap_year(year)
            case leap_year do
                true -> IO.puts("#{year}年はうるう年です。")
                false -> IO.puts("#{year}年はうるう年ではありません。")
            end
        end)
    end

    def get_leap_year(year)  do
        case LeapYear.is_integer(year, 4) do
            true -> 
                case LeapYear.is_integer(year, 100) do
                    true ->
                        LeapYear.is_integer(year, 400)
                    false -> true
                end
            false -> false
        end
    end
    
    def is_integer(val_a, val_b) do
        rem(val_a, val_b) == 0
    end
end

LeapYear.main
