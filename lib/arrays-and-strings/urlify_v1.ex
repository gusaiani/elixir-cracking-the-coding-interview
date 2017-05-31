defmodule UrlifyV1 do
  @moduledoc """
  Chapter 1
  Page 90

  Write a method to replace all spaces in a string with %20.
  """

  @doc """
  Check string for uniqueness of all characters.

      iex> UrlifyV1.start("www.google.com")
      "www.google.com"

      iex> UrlifyV1.start("Mr John Smith            ")
      "Mr%20John%20Smith"

  """
  def start(str) do
    str
    |> String.trim
    |> String.replace(" ", "%20")
  end
end
