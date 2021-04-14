defmodule NextEngineTest do
  use ExUnit.Case
  doctest NextEngine

  test "greets the world" do
    assert NextEngine.hello() == :world
  end
end
