require './class_player'
require './class_game'
require './class_question'

# generate player and question objects
player1 = Player.new('Alex')
player2 = Player.new('Yuka')
question = Question.new

# when the objects are passed in, the game object will have access to the obejcts' methods
game = Game.new(player1, player2, question)

game.run_game