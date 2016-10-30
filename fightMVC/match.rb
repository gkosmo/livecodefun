class Match
  attr_accessor :fighter1 , :fighter2, :id
  def initialize(fighter1, fighter2 , id = 0)
    @id = id
    @fighter1 = fighter1
    @fighter2 = fighter2
    @sequence = []
  end

  def play
    keep_going = true
    while keep_going
      keep_going = [@fighter1.punch(@fighter2), @fighter1.kick(@fighter2)].sample
      keep_going = [@fighter2.punch(@fighter1), @fighter2.kick(@fighter1)].sample
    end
    @fighter1.hp > 0 ? @fighter1 : @fighter2
  end

end
