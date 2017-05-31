defmodule ZeroMatrixTest do
  use ExUnit.Case

  test "4-sided matrix" do
    untreated_matrix = %{
      row_length: 4,
      column_height: 4,
      items: [
        'a', 'b', 'c', 'd',
        'e',  0,  'g', 'h',
        'i', 'j', 'k', 'l',
        'm', 'n', 'o', 'p'
      ]
    }

    treated_matrix = %{
      row_length: 4,
      column_height: 4,
      items: [
        'a',  0, 'c', 'd',
         0,   0,  0,   0,
        'i',  0, 'k', 'l',
        'm',  0, 'o', 'p'
      ]
    }

    assert ZeroMatrix.start(untreated_matrix) == treated_matrix
  end

  test "8 x 2 matrix" do
    untreated_matrix = %{
      row_length: 8,
      column_height: 2,
      items: [
        'a',  0,  'c', 'd', 'e',  0,  'g', 'h',
        'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p'
      ]
    }

    treated_matrix = %{
      row_length: 8,
      column_height: 2,
      items: [
        0 ,  0 ,  0 ,  0 ,  0 , 0,  0 ,  0,
        'i', 0, 'k', 'l', 'm', 0, 'o', 'p'
      ]
    }

    assert ZeroMatrix.start(untreated_matrix) == treated_matrix
  end
end
