require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#Home
puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO 2.0' !     |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"

#Init_player
puts "Choisi un nom de joueur :"
print ">"
username = gets.chomp

#Init_game
my_game = Game.new("username")

#Game
while my_game.is_still_going !== true
  my_game.show_players
  my_game.menu
  my_game.menu_choice
  my_game.enemies_attack
end

#End game
my_game.end
