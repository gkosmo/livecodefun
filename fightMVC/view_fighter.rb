class ViewFighter

  def list_fighters(list)
	list.each_with_index do |fighter, index|
	  if fighter.class == Fighter
		puts "#{index + 1 } : Normal fighter - name: #{fighter.name} ; hp : #{fighter.hp}"
	  elsif fighter.class == MonkFighter
		puts "#{index + 1 } : Monk fighter - name: #{fighter.name} ; hp : #{fighter.hp}"
	  end
	end
  end


	def get_choice_of_fighter
      puts " do you want: \n (1) a normal fighter or \n (2) a Monk Fighter ? "
	    return gets.chomp.to_i
	end
	def get_choice_name
	    puts "name of your new fighter?"
	    return gets.chomp
	end
	def get_index
	    puts " What fighter do you want to destroy ?  (return position)"
	    return gets.chomp.to_i - 1
	end
end
