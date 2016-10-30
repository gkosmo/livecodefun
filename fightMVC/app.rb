require_relative 'fighter_club'
require_relative 'router'
require_relative 'fighter_controller'
require_relative 'match_collection'
require_relative 'match_collection_controller'
require_relative 'match_sequence'



csv_file = File.join(__dir__ , 'fighters.csv')
fighterclub = FighterClub.new(csv_file)
controller = FighterController.new(fighterclub)
csv_file_match_collection = File.join(__dir__ , 'matches.csv')
csv_file_sequences = File.join(__dir__ , 'sequences.csv')
matches = Match_collection.new(csv_file_match, csv_file_sequences)
controller_match = MatchCollectionController.new(matches)


router= Router.new(controller, controller_match)
router.run
