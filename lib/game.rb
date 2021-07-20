class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    return "draw" if player1 == player2

    return "player1 wins" if player1 == "rock" && player2 == "scissors"
    return "player1 wins" if player1 == "scissors" && player2 == "paper"
    return "player1 wins" if player1 == "paper" && player2 == "rock"

    return "player2 wins" if player2 == "rock" && player1 == "scissors"
    return "player2 wins" if player2 == "scissors" && player1 == "paper"
    return "player2 wins" if player2 == "paper" && player1 == "rock"
  end
end
