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
    return true if player1 == "rock" && player2 == "scissors"
    return true if player1 == "scissors" && player2 == "paper"
    return true if player1 == "paper" && player2 == "rock"

    false
  end
end
