defmodule RemoveKthToLast do
  @moduledoc """
  Chapter 2
  Page 94

  2.1 Remove KthToLast:
  Write code to remove duplicates from an unsorted linked list
  """

  @doc """
  Remove kth to last item from a List.

  ## Examples

      iex> RemoveKthToLast.do!([1, 2, 3], 2)
      [2, 3]

      iex> RemoveKthToLast.do!([1, 2, 3], 1)
      [1, 3]

      iex> RemoveKthToLast.do!([1, 2, 3], 0)
      [1, 2]

  """
  def do!(list, kthToLast) do
    List.delete_at(list, -kthToLast - 1)
  end
end
