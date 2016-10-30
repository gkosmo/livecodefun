require_relative 'view_fighter'
class FighterController


	def initialize(fighters)
	   @fighters = fighters
	   @view = ViewFighter.new
	end




	def list
	    list = @fighters.all
            @view.list_fighters(list)
	end


        def create
          fighterchoice = @view.get_choice_of_fighter
	  until fighterchoice == 1 || fighterchoice == 2
		fighterchoice = @view.get_choice_of_fighter
	  end
	  fightername = @view.get_choice_name
	  if fighterchoice == 1
		new_fighter = Fighter.new(fightername)
	  elsif fighterchoice == 2
		new_fighter = MonkFighter.new(fightername)		  
	  end		
	  @fighters.add_fighter(new_fighter)
	end


	def destroy
	list
	index_to_destroy = @view.get_index
        @fighters.remove_fighter(index_to_destroy)
	end

end
