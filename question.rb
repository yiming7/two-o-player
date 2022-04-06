class Question
  attr_reader :answer, :number1, :number2, :player
  def initialize(player)
    @player = player
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def asking
    "Player #{@player}: What does #{@number1} plus #{@number2} equal?" 
  end
end