require_relative 'fighter_club'
require_relative 'router'
require_relative 'fighter_controller'

csv_file = File.join(__dir__ , 'fighters.csv')
fighterclub = FighterClub.new(csv_file)
controller = FighterController.new(fighterclub)


router= Router.new(controller)
router.run
