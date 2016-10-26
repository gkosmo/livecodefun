class Fighter

	#accessors, because we'll want to read and change them. Do we want to change strength ?  - Yes, in the case where strength decrease as the fighter gets tired over time 

	attr_accessor :hp, :strength

	#accessor reader so we can get the player's name
	
	attr_reader :name
	#STATE

	# We have our 'initialize' with some parameters, strength and name

	def initialize(strength, player_name)

	    @strength = strength

	# We give a default value to the life of our fighters

	    @hp = 100

	    @name = player_name

	end

	#BEHAVIOR
   
	# Getting to punch another player, who's our parameter
	
	def punch(player_name)
	  # we change the life (hp) of our adversary, and we can because of the hp accessor ! 
	  player_name.hp = player_name.hp - 10

	end

	# same same but differen

	def kick(player_name)
	
	  player_name.hp = player_name.hp - 20

	 end

  	# To DO's
			
	 def dead

	 end
	
	 def to_s
	 
	 end

end


