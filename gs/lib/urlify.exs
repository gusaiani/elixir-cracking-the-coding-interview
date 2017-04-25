defmodule Urlify do
  @moduledoc """
  Chapter 1
  Page 90

  Write a method to replace all spaces in a string with %20.
  """

  def start(str) do
    str
    |> String.trim
    |> String.replace(" ", "%20")
  end
end

IO.inspect(Urlify.start("Mr John Smith            ")) # "Mr%20John%20Smith"
