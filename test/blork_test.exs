defmodule BlorkTest do
  use ExUnit.Case
  doctest Blork

  test "greets the world" do
    assert Blork.hello() == :world
  end

  test "checks the new func" do
    assert Blork.callPrivate() == :private_hello
  end
end
