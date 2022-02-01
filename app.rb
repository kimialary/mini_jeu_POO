require 'bundler'
Bundler.require

require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

puts ""
puts "Bienvenue dans WWF Superstars of Wrestling !"

player1 = Player.new("Josiane")
puts "À ma droite #{player1.name}."
player2 = Player.new("José")
puts "À ma gauche #{player2.name}."

puts ""

while player1.life_points > 0 && player2.life_points > 0
	puts "Voici l'état de chaque joueur :"
    player1.show_state
    player2.show_state


puts "GET READY FIGHT !"
player1.attacks(player2)

if player2.life_points <= 0 
        break
    end

puts "---------------------------"

puts "GET READY FIGHT!"
player2.attacks(player1)
end

binding.pry