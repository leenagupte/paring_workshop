require "spec_helper"
require "game"

RSpec.describe Game do
  it "returns draw if player 1 and player 2 select the same thing" do
    expect(described_class.new("rock", "rock").play).to eq("draw")
  end

  context "player1 wins" do
    it "player1 has rock and player2 scissors" do
      expect(described_class.new("rock", "scissors").play).to eq("player1 wins")
    end

    it "player1 has scissors and player2 paper" do
      expect(described_class.new("scissors", "paper").play).to eq("player1 wins")
    end

    it "player1 has paper and player2 rock" do
      expect(described_class.new("paper", "rock").play).to eq("player1 wins")
    end
  end

  context "player2 wins" do
    it "player2 has rock and player1 scissors" do
      expect(described_class.new("scissors", "rock").play).to eq("player2 wins")
    end

    it "player2 has scissors and player1 paper" do
      expect(described_class.new("paper", "scissors").play).to eq("player2 wins")
    end

    it "player2 has paper and player1 rock" do
      expect(described_class.new("rock", "paper").play).to eq("player2 wins")
    end
  end
end
