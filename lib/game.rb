class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    return "draw" if draw?
    return "player1 wins" if player1_wins?

    "player2 wins"
  end

private

  def draw?
    player1 == player2
  end

  def player1_wins?
    rules.each do |rule|
      return true if player1 == rule[:win] && player2 == rule[:lose]
    end

    false
  end

  def rules
    [
      {
        win: "rock",
        lose: "scissors",
      },
      {
        win: "scissors",
        lose: "paper",
      },
      {
        win: "paper",
        lose: "rock",
      },
    ]
  end
end
