defmodule RemoveDups do
  @moduledoc """
  Chapter 2
  Page 94

  2.1 Remove Dups:
  Write code to remove duplicates from an unsorted linked list
  """

  @doc """
  Remove duplicates from a List.

  ## Examples

      iex> RemoveDups.do!([1, 2, 3])
      [1, 2, 3]

      iex> RemoveDups.do!([1, 1, 3])
      [1, 3]

  """
  def do!(list) do
    Enum.reverse(do!(list, []))
  end

  def do!([], unique_list), do: unique_list

  def do!([a | tail], unique_list) do
    case Enum.member?(unique_list, a) do
      false -> do!(tail, [a | unique_list])
      true -> do!(tail, unique_list)
    end
  end
end
