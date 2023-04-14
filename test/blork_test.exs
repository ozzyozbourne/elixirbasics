defmodule BlorkTest do
  use ExUnit.Case
  doctest Blork

  test "greets the world" do
    assert Blork.hello() == :world
  end

  test "checks the new func" do
    assert Blork.callPrivate() == :private_hello
  end

  test "Will check the deck creation" do
    assert Blork.create_Deck() == ["ACE", "TWO", "THREE"]
  end

  test "Checking the shuffle function" do
    assert Blork.create_Deck() |> Blork.shuffle() != ["ACE", "TWO", "THREE"]
  end

  test "Checking the contains method" do
    assert Blork.create_Deck() |> Blork.contains?("ACE") == true
  end
end
