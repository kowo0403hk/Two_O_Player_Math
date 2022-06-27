require './question_bank'

class Questions
  attr_accessor :question, 

  def initialize
    @question = @Qbank.find(|question| question[:id] === rand(20))
  end

  def ask_question
    self.question= @Qbank(rand(20))
    puts self.question
  end
end
