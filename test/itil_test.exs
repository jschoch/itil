defmodule ItilTest do
  use ExUnit.Case
  doctest I

  test "the truth" do
    I.ld "debug", %{term: :term}
  end
end
