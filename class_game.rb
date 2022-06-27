class Game
  attr_accessor :players, :player, :turn, :question

  def initialize(player1, player2, question)
    @players = [player1, player2]
    @player = player1
    @turn = player1.name
    @question = question
  end

  def run_game
    while !self.players.find {|player| player.life == 0}
      self.game_procedure
      self.change_turn
    end

    winner = self.players.find {|player| player.life != 0}
    puts "#{winner.name} wins with a score of #{winner.life}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  private

  def change_turn
    if self.turn == self.players[0].name
      self.turn= self.players[1].name
      self.player= self.players[1]
    else
      self.turn= self.players[0].name
      self.player= self.players[0]
    end
  end

  def game_procedure
    puts "#{self.turn}: #{self.question.ask_question}"
    print "> "
    
    user_input = $stdin.gets.chomp.to_i
    
    if user_input == self.question.answer
      puts "#{self.turn}: YES! You are correct."
    else
      puts "#{self.turn}: Seriously? No!"
      self.player.lose_life 
    end
    
    if !self.players.find {|player| player.life == 0}
      puts "#{self.players[0].name}: #{self.players[0].life}/3 vs #{self.players[1].name}: #{self.players[1].life}/3"
      puts "----- NEW TURN -----"
    end
  end
end  