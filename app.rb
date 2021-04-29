#app.rb
require 'bundler'
Bundler.require

#game&player
require_relative 'lib/game'
require_relative 'lib/player'

#foo/bar
player1 = Player.new("Foo")
player2 = Player.new("Bar")

#life_count
while player1.life_points > 0 && player2.life_points > 0
  puts "Voici l'état de chaque joueur :"
  player1.show_state
  player2.show_state
  puts " "
  puts "Passons à la phase d'attaque :"
  player1.attacks(player2)
    if player2.life_points <= 0
      break
    end
  player2.attacks(player1)
  puts " "
end
#binding.pry
