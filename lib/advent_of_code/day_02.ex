defmodule AdventOfCode.Day02 do
  def part1(input) do
    Enum.reduce(input, 0, fn [l, w, h], acc ->
      acc + Enum.min([l * w, w * h, h * l]) + 2 * l * w + 2 * w * h + 2 * h * l
    end)
  end

  def part2(input) do
    IO.inspect(input)
    Enum.reduce(input, 0, fn [l, w, h], acc -> acc + l * w * h + 2 * l + 2 * w end)
  end

  def parseInput(input) do
    String.split(input, "\n", trim: true)
    |> Enum.map(&String.split(&1, "x"))
    |> Enum.map(fn x -> Enum.map(x, &String.to_integer(&1)) |> Enum.sort() end)
  end
end
git
