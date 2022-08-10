defmodule ListFilter do
  def call(list), do: countOdds(list)


  defp countOdds(list) do
    Enum.count(filterNumbers(list), fn x -> rem(x, 2) != 0 end)
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
