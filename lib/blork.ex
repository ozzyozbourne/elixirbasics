defmodule Blork do
  @moduledoc """
  Documentation for `Blork`.
  We Must stand togetherh
  """

  @doc """
  Hello world.

  ## Examples

      iex> Blork.hello()
      :world

  """
  def hello do
    :world
  end

  defp private_hello do
    :private_hello
  end

  @doc """
  To test the hello world in elixir

  ## Examples
    iex>Blork.callPrivate
    :private_hello
  """
  def callPrivate do
    private_hello()
  end

  @doc """
  To create a deck

  ## Examples
    iex>Blork.create_Deck
    ["ACE", "TWO", "THREE"]
  """
  def create_Deck do
    values = ["ACE", "TWO", "THREE", "FOUR", "FIVE"]
    suites = ["SPADES", "CLUBS", "HEARTS", "DIAMONDS"]

    cards =
      for suite <- suites do
        for value <- values do
          "#{value} of #{suite}"
        end
      end

    List.flatten(cards)
  end

  def create_Deck_new do
    values = ["ACE", "TWO", "THREE", "FOUR", "FIVE"]
    suites = ["SPADES", "CLUBS", "HEARTS", "DIAMONDS"]

    for value <- values, suite <- suites do
      "#{value} of #{suite}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, hand) do
    Enum.member?(deck, hand)
  end
end
