defmodule ZeroMatrixTest do
  use ExUnit.Case

  test "4-sided matrix" do
    untreatedMatrix = %{
      row_length: 4,
      column_height: 4,
      items: [
        'a', 'b', 'c', 'd',
        'e',  0,  'g', 'h',
        'i', 'j', 'k', 'l',
        'm', 'n', 'o', 'p'
      ]
    }

    treatedMatrix = %{
      row_length: 4,
      column_height: 4,
      items: [
        'a',  0, 'c', 'd',
         0,   0,  0,   0,
        'i',  0, 'k', 'l',
        'm',  0, 'o', 'p'
      ]
    }

    assert ZeroMatrix.start(untreatedMatrix) == treatedMatrix
  end
end
