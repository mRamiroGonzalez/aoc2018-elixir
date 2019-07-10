defmodule Day1 do
  @moduledoc false

  @filename "lib/day1/input.txt"

  def part1() do
    File.stream!(@filename)
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.to_integer/1)
    |> part1_process
  end

  def part1_process(stream) do
    Enum.sum(stream)
  end

  # Not mine, see: https://github.com/debajit/advent-of-code-2018/blob/master/day-01-part-2-chronal-calibration.exs
  def part2() do
    File.stream!(@filename)
    |> Stream.cycle()
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.to_integer/1)
    |> part2_process
  end

  def part2_process(stream) do
    stream
    |> Enum.reduce_while({0, MapSet.new()}, fn x, {sum, seen} ->
      if MapSet.member?(seen, sum) do
        {:halt, {sum, seen}}
      else
        {:cont, {x + sum, MapSet.put(seen, sum)}}
      end
    end)
    |> elem(0)
  end
end
