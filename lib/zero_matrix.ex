defmodule ZeroMatrix do
  @moduledoc """
  Chapter 1
  Page 91

  1.8 Write an algorithm such that if an element in an M x N matrix
  is zero, its entire row and column are set to 0.
  """

  @doc """
  Detect zero in matrix and set its column and row entries all as zero.
  """
  def start(matrix) do
    {x, y} = find_zeros(matrix)
    IO.inspect x
    IO.inspect y
    "3"
  end

  defp find_zeros(matrix, coordinates_with_zeros \\ {[], []}, index \\ 0)

  defp find_zeros(%{row_length: _, column_height: _, items: []}, coordinates_with_zeros, _),
    do: coordinates_with_zeros

  defp find_zeros(%{row_length: row_length, column_height: column_height, items: [0 | t]}, {x, y}, index) do

    {new_x, new_y} = get_coordinates(row_length, index)

    every_x = add_if_new(x, new_x)
    every_y = add_if_new(y, new_y)

    coordinates_with_zeros = {every_x, every_y}

    find_zeros(%{row_length: row_length, column_height: column_height, items: t}, coordinates_with_zeros, index + 1)
  end

  defp find_zeros(%{row_length: row_length, column_height: column_height, items: [_| t]}, coordinates_with_zeros, index) do
    find_zeros(%{row_length: row_length, column_height: column_height, items: t}, coordinates_with_zeros, index + 1)
  end

  defp get_coordinates(row_length, index) do
    x = rem(index, row_length)
    y = div(index, row_length)
    {x,y}
  end

  defp add_if_new(list, item) do
      case Enum.member?(list, item) do
        true -> list
        false -> [item | list]
      end
  end
end
