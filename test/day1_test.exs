defmodule Day1Test do
  use ExUnit.Case

  test "validates the example for part 1" do
    data = [1, -2, 3, 1]
    result = Day1.part1(data)
    assert result == 3

    data = [1, 3, -5]
    result = Day1.part1(data)
    assert result == -1
  end

  test "answers the part 1" do
    data = "lib/day1/input.txt"
      |> FileHelper.array_from_file("\n")
      |> FileHelper.strings_to_integers()
    result = Day1.part1(data)
    assert result == 486
  end

  test "validates the example for part 2" do
    data = [1, -2, 3, 1]
    result = Day1.part2(data)
    assert result == 2

    data = [7, 7, -2, -7, -4]
    result = Day1.part2(data)
    assert result == 14
  end

  test "answers the part 2" do
    data = "lib/day1/input.txt"
     |> FileHelper.array_from_file("\n")
     |> FileHelper.strings_to_integers()
    result = Day1.part2(data)
    assert result == 69285
  end
end
