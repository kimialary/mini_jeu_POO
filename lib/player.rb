require "pry"

class Player
	attr_accessor :name, :life_points

	def initialize(name)
    @name = name
    @life_points = 10 
   end

   def show_state
   	print "#{name} a #{life_points} points de vie. "
   end 

   def gets_damage(damages)
   	@life_points = (life_points - damages)
   	if life_points <= 0
   		puts "#{name} a été tué. GAME OVER"
	end 
   end

   def attacks(player)
   	damage = compute_damage
   	puts "Le joueur #{@name} attaque le joueur #{player.name}."
   	puts "il lui inflige #{damage} points de dommages"
   	player.gets_damage(damage)
   end

   def compute_damage
    return rand(1..6)
  end


end #fin de ma classe

#binding.pry
#puts "end of file"
