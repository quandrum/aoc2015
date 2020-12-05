defmodule AdventOfCode.Day02 do
  def part1(input) do
  end

  def part2(input) do
  end

  def parseInput(input) do
    String.split(input, "\n", trim: true)
    |> Enum.map(&String.split(&1, " "))
    |> Enum.map(&normalizeInput(&1))
  end
end
