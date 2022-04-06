require "./player"
require "./question"

p1 = Player.new("1")
p2 = Player.new("2")

game_end = false
player_turn = 1

while !game_end do
  question = Question.new(player_turn)
  puts question.asking
  player_anwser = gets.chomp
  # puts "answer is #{question.answer}"
  if player_anwser.to_i == question.answer
    puts "Player #{player_turn}: YES! You are correct."
    puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
    puts "----- NEW TURN -----"
  else
    puts "Player #{player_turn}: Seriously? No!"
    player_turn ==1 ? p1.lose_life: p2.lose_life
    puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
      if p1.lives>0 && p2.lives>0
        puts "----- NEW TURN -----"
      else
        game_end = true
        winner = (p1.lives>0 ? p1 : p2)
        puts "Player #{winner.name} wins with a score of #{winner.lives}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
      end
  end
  player_turn = (player_turn==1? 2: 1)
end