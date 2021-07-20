def rock_paper_scissors(player1, player2)
  if player1 == player2
    return 'draw'
  end

  win = %w[rock scissors paper]
  lose = %w[scissors paper rock]
end
