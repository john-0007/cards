defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck make 20 cards" do
    deck_length = length(Cards.create_deck())
    assert deck_length == 20
  end

  test "suffling a deck randomizes it" do
    deck = Cards.create_deck()
    assert deck != Cards.suffle(deck)
  end
end
