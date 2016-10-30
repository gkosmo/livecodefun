require_relative 'fighter'
class MonkFighter < Fighter

	def initialize(player_name, hp = 120)
		super
	end 


	def punch
 	super
	war_cry
	end

	def kick
 	  player_name.hp = player_name.hp - 40
	  war_cry
	end		


	private

	def war_cry 
		" You'll never defeat my ancestral fighting heritage ! "
	end

end
