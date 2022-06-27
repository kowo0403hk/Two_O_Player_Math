require './class_player'
require './class_game'
require './class_question'

player1 = Player.new('Alex')
player2 = Player.new('Yuka')
question = Question.new
question.ask_question

game = Game.new(player1, player2, question)

game.run_game