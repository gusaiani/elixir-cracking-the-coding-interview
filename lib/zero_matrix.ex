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
  def start(%{row_length: row_length, column_height: column_height, items: items}) do
    {x, y} = find_zeros(
      %{row_length: row_length,
        column_height: column_height,
        items: items})

    new_items =
    items
    |> treat_x(x, row_length, column_height)
    |> treat_y(y, row_length)

    %{row_length: row_length, column_height: column_height, items: new_items}
  end

  defp find_zeros(matrix, coordinates_with_zeros \\ {[], []}, index \\ 0)

  defp find_zeros(%{row_length: _, column_height: _, items: []}, coordinates_with_zeros, _),
    do: coordinates_with_zeros

  defp find_zeros(%{row_length: row_length, column_height: column_height, items: [0 | t]}, {x, y}, index) do

    {new_x, new_y} = get_coordinates(row_length, index)

    every_x = add_if_new(x, new_x)
    every_y = add_if_new(y, new_y)

    coordinates_with_zeros = {every_x, every_y}

    find_zeros(
      %{row_length: row_length,
        column_height: column_height,
        items: t},
      coordinates_with_zeros,
      index + 1)
  end

  defp find_zeros(%{row_length: row_length, column_height: column_height, items: [_| t]}, coordinates_with_zeros, index) do
    find_zeros(
      %{row_length: row_length,
        column_height: column_height,
        items: t},
       coordinates_with_zeros,
       index + 1)
  end

  defp get_coordinates(row_length, index) do
    x = rem(index, row_length)
    y = div(index, row_length)
    {x, y}
  end

  defp add_if_new(list, item) do
      case Enum.member?(list, item) do
        true -> list
        false -> [item | list]
      end
  end

  defp treat_x(items, x_positions, row_length, column_height) do
    indexes = indexes_from(:x, x_positions, row_length, column_height)
    apply_zeros(items, indexes)
  end

  defp treat_y(items, y_positions, row_length) do
    indexes = indexes_from(:y, y_positions, row_length)
    apply_zeros(items, indexes)
  end

  defp indexes_from(:x, x_positions, row_length, column_height) do
    for position <- x_positions, n <- 0..column_height - 1 do
      n * row_length + position
    end
  end

  defp indexes_from(:y, y_positions, row_length) do
    for position <- y_positions, n <- 0..row_length - 1 do
      row_length * position + n
    end
  end

  defp apply_zeros(items, indexes) do
    items
    |> Enum.with_index
    |> Enum.map(fn {item, index} ->
      if index in indexes, do: 0, else: item
    end)
  end
end
