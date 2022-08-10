defmodule ListFilter do
  def call(list) do
    countOdds(list)
  end

  defp countOdds(list) do
    numbers = filterNumbers(list)

    Enum.count(numbers, fn x -> rem(x, 2) != 0 end)
  end

  defp filterNumbers(list) do
    Enum.flat_map(list, fn el ->
      case Integer.parse(el) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end
end
