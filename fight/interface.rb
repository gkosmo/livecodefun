require_relative 'fighter'

fighter = Fighter.new(100, 'Gino')
fighter2 = Fighter.new(100, 'Vivek')

fighter.punch(fighter2)

puts fighter2.hp

fighter2.kick(fighter)

puts fighter.hp
