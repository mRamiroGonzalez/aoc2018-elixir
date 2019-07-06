defmodule Day1 do
  @moduledoc false

  def part1(input) do
    Enum.sum(input)
  end

  def part2(input, current_index \\ 0, current_sum \\ 0, values_found \\ []) do
    new_value = current_sum + Enum.at(input, current_index)

    cond do
      Enum.member?(values_found, new_value) ->
        new_value
      current_index == length(input) - 1 ->
        part2(input, 0, new_value, [new_value | values_found ])
      true ->
        part2(input, current_index + 1, new_value, [new_value | values_found])
    end

  end
end
