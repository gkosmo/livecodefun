class Fighter

	attr_accessor :hp
	attr_reader :name

	def initialize(player_name, hp = 100)
	    @hp = hp
	    @name = player_name

	end

	def punch(player_name)
	  player_name.hp = player_name.hp - 10
    dead?
	end

	def kick(player_name)
	  player_name.hp = player_name.hp - 20
    dead?
	end

	 def to_s
	   "  The fight #{@name} has #{@hp} hp"
	 end

   private


   def dead?
     @hp <= 0 ? true : false
   end
end


