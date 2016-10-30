require 'csv'
require 'match'

class match_collection
  def initialize(csv_file_match_collection, csv_file_sequences)
    @matches = []
    @csv_file_match = csv_file_match_collection
  #  @csv_file_sequences = csv_file_sequences
    load_csv
  end


  private
  def load_csv
    CSV.foreach(@csv) do |line|
              temp = Match.new(line[1], line[2], line[0])
              @matches << temp
      end
    end
  end

  def save_csv
    cpt = 0
   CSV.open(@csv, 'w') do |csv|
            @matches.each do |x|
            csv << [cpt, x.fighter1, x.fighter2]
            cpt += 1
          end
      end
  end

end
