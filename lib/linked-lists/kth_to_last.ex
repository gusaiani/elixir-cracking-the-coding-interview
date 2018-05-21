defmodule KthToLast do
  @moduledoc """
  Chapter 2
  Page 94

  2.1 Return KthToLast:
  Write code to remove duplicates from an unsorted linked list
  """

  @doc """
  Return kth to last item from a List.

  ## Examples

      iex> KthToLast.do!([1, 2, 3], 3)
      1

      iex> KthToLast.do!([1, 2, 3], 2)
      2

      iex> KthToLast.do!([1, 2, 3], 1)
      3

  """
  def do!(list, kthToLast) do
    Enum.at(list, -kthToLast)
  end
end
