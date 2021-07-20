require "spec_helper"
require "game"

RSpec.describe Game do
  it "returns draw if player 1 and player 2 select the same thing" do
    expect(described_class.new("rock", "rock").play).to eq("draw")
  end
end
