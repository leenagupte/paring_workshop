require "rock_paper_scissors"
require "spec_helper"

describe "A rock paper scissors simulator", type: :view do
  it "returns a draw if both players do the same" do
    game_outcome = rock_paper_scissors('rock', 'rock')

    expect(game_outcome).to eq 'draw'
  end

  it "returns a win for rock against scissors" do
    game_outcome = rock_paper_scissors('rock', 'scissors')

    expect(game_outcome).to eq 'player1 wins'
  end
end
