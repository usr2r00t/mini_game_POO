require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "------------------------------------------------"
puts "|Welcome on 'They all want my POO' !|"
puts "|The object of the game is to be the last survivor !|"
puts "-------------------------------------------------"

#Player_init
puts "Choose a player name:"
print ">"
username = gets.chomp
human_player = HumanPlayer.new(username)

#Enemy_init
enemies = []
pnj_1 = Player.new("Foo")
enemies.push(pnj_1)
pnj_2 = Player.new("Bar")
enemies.push(pnj_2)²

#Fight
while human_player.life_points > 0 && (pnj_1.life_points > 0 || pnj_2.life_points > 0)
  puts " "
  puts "-------------------------------------------------"
  puts " "
  human_player.show_state
  puts " "
  puts "-------------------------------------------------"

  puts "What action do you want to perform ?"
  puts "a - Look for a better weapon"
  puts "s - Seek treatment" 
  puts "Attack a plyer:"
  puts "0 - #{pnj_1.show_state}"
  puts "1 - #{pnj_2.show_state}"
  print ">"
  input = gets.chomp
  puts " "
  puts "-------------------------------------------------"
  
  if input == "a"
    human_player.search_weapon
  elsif input == "s"
    human_player.search_health_pack
  elsif input == "0"
    human_player.attacks(pnj_1)
  else
    human_player.attacks(pnj_2)
  end
  
  #Fight, w/PNJ
  puts "Other players attack!"
  enemies.each do |enemy|
    enemy.attacks(human_player) if enemy.life_points > 0
  end
end

#End_game
if human_player.life_points > 0
  puts ">Nice ! You won the game !"
else 
  puts "Loser ! You loose !"
end
