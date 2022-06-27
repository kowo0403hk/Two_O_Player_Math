class Game
  attr_accessor :turn, :players

  def initialize(player1, player2)
    @player = [player1, player2]
    @turn = self.turn= player1
  end

  def change_turn
    if self.turn == self.players[0]
      self.turn= self.players[1]
    else
      self.turn= self.players[0]
    end
  end

  def new_turn
    puts "------ NEW TURN -----"
  end

  def input
    answer = $stdin.gets.chomp
  end 

  def game_end
    puts "${}"

  # how to interact with players life?
  while 

  end
end  