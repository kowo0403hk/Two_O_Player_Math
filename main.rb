require './class_player'
require './class_game'
require './class_questions'

player1 = Player.new('Alex')
player2 = Player.new('Yuka')

p game = Game.new(player1, player2)