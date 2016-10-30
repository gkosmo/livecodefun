require 'csv'
require_relative 'fighter'
require_relative 'monk_fighter'
class FighterClub
	
	def initialize(csv_file)
		@fighters = []
		@csv = csv_file
		load_csv
	end

	def all
	   @fighters
	end
        def add_fighter(fighter)
		@fighters << fighter
		save_csv
	end
	def remove_fighter(index)
		@fighters.delete_at(index)
		save_csv
	end

	private 


	def load_csv
	  CSV.foreach(@csv) do |line|
 	     #   info = line.split(',')
             if line[2].to_i == 0
	      temp = MonkFighter.new(line[0], line[1])
     	      @fighters << temp
	     else 
	      temp = Fighter.new(line[0], line[1])
     	      @fighters << temp
	    end
		p line 
	  end
       	end
	def save_csv 
	 CSV.open(@csv, 'w') do |csv|
          @fighters.each do |x|
          p x.class
	   if x.class == MonkFighter
         	csv << [x.name, x.hp, 0]
	   else 
		csv << [x.name, x.hp, 1]
	   end
          end
         end
	end
end
