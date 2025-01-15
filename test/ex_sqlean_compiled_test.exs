defmodule ExSqleanCompiledTest do
  use ExUnit.Case
  doctest ExSqleanCompiled

  test "greets the world" do
    assert ExSqleanCompiled.hello() == :world
  end
end
