defmodule Playground.StringHelperTest do
  use     ExUnit.Case
  alias   Playground.StringHelper

  doctest StringHelper

  test "strip_margin will not replace embedded pipes" do
    expected = "Hello| the| world!"
    result   = StringHelper.strip_margin expected

    assert expected == result
  end
end
