require_relative 'Question'
require_relative 'Player'

puts "Please enter the name for Player 1: "
player1 = gets.chomp

puts "Please enter the name for Player 2: "
player2 = gets.chomp

arr = [player1, player2]

class Logic

  attr_reader :players

  def initialize(arr)
    @players = (arr).map { |user| Player.new(user) }
    start_play
  end

  def start_play
    while (@players[0].score != 0 && @players[1].score != 0)
      play_round
    end
    gameOver
  end

  def play_round

  puts "#{@players[0].name}: #{@players[0].score}/3 vs #{@players[1].name}: #{@players[1].score}/3"

  question = Question.new(@players[0])
  input = question.asks
  question.verify(input)

  if @players[0].score != 0

  puts "#{@players[0].name}: #{@players[0].score}/3 vs #{@players[1].name}: #{@players[1].score}/3"

  question = Question.new(@players[1])
  input = question.asks
  question.verify(input)

  end

end

def gameOver

  if @players[0].score == 0
  puts "The Winner Is Player #{@players[1].name} with a score of #{@players[1].score}/3"

elsif @players[1].score == 0
  puts "The Winner Is Player #{@players[0].name} with a score of #{@players[0].score}/3"

  end
end

end

run = Logic.new(arr);
