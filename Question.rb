class Question

attr_reader :numbers

  def initialize(player)
    @player = player

    @num1 = [*1..20].sample
    @num2 = [*1..20].sample

    @sum1 = (@num1+@num2)
  end

  def asks
    puts "#{@player.name}: What does #{@num1} plus #{@num2} equal?"
    guess = gets.chomp.to_i
  end

  def verify(input)

    if input == @sum1

      p "YES! You are correct."
      p "----- NEW TURN -----"
    else
      decrease = @player.decrease_score
      p "Seriously? No!"
      p "----- NEW TURN -----"
    end
  end


end
