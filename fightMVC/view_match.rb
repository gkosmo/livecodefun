class ViewMatch

  def select_fighter
    puts 'choose your fighter by index'
    return gets.chomp.to_i - 1
  end
end
