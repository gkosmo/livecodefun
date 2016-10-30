require_relative 'view_match'

class MatchCollectionController
  def initialize(matches)
    @matches = matches
    @view = ViewMatch.new
  end

  def create(controller_fighter)
    controller_fighter.list
    fighter1 = @view.select_fighter
    fighter2 = @view.select_fighter
    match = Match.new(fighter1, fighter2)
    match.play
  end

end
