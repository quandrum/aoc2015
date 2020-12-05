defmodule AdventOfCode.Day01 do
  def part1(input) do
    open =
      Enum.filter(input, &(&1 == ?())
      |> length

    close =
      Enum.filter(input, &(&1 == ?)))
      |> length

    open - close
  end

  def part2(input) do
    findBasementDweller(input, {0, 0})
  end

  def parseInput(input) do
    String.trim(input)
    |> String.to_charlist()
  end

  defp findBasementDweller([hd | tail], {floor, index}) do
    if floor == -1 do
      index
    else
      case hd do
        ?( -> findBasementDweller(tail, {floor + 1, index + 1})
        ?) -> findBasementDweller(tail, {floor - 1, index + 1})
      end
    end
  end
end
