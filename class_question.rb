class Question
  # attr_accessor gives us the built-in setter and getter methods
  attr_accessor :question, :answer

  def initialize
    @question = nil
    @answer = nil
  end

  def ask_question
    random1 = rand(20)
    random2 = rand(20)
    self.answer= random1 + random2
    self.question= "What does #{random1} plus #{random2} equal?"
  end

end