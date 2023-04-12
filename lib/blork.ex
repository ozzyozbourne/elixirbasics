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

  def callPrivate do
    private_hello()
  end
end
