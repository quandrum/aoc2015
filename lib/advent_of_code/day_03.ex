defmodule AdventOfCode.Day03 do
  def part1(input) do
    visitHouses(input, {0, 0}, MapSet.new())
  end

  def part2(input) do
    roboVisitHouses(input, [{0, 0}], [{0, 0}])
  end

  def parseInput(input) do
    String.to_charlist(input)
  end

  # part
  defp roboVisitHouses([s, r | tail], santa, robo) do
    roboVisitHouses(tail, [move(s, hd(santa))] ++ santa, [move(r, hd(robo))] ++ robo)
  end

  defp roboVisitHouses([], santa, robo) do
    Enum.uniq(santa ++ robo) |> length
  end

  # part 1
  defp visitHouses([hd | tail], lastHouse, visited) do
    visitHouses(tail, move(hd, lastHouse), MapSet.put(visited, lastHouse))
  end

  defp visitHouses([], lastHouse, visited) do
    MapSet.put(visited, lastHouse) |> MapSet.size()
  end

  defp move(dir, {x, y}) do
    case dir do
      ?< -> {x - 1, y}
      ?> -> {x + 1, y}
      ?v -> {x, y - 1}
      ?^ -> {x, y + 1}
    end
  end
end
