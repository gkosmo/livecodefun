class Router
  def initialize(controller, controller_match)
    @controller = controller
    @controller_match = controller_match
    @running    = true
  end

  def run
    puts "Welcome to the Fighter!"
    puts "           --           "

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then @controller_match.create(@controller)
    when 0 then stop
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all fighters"
    puts "2 - Create a new fighter"
    puts "3 - Destroy a fighter"
    puts "4 - Make a match"
    puts "0 - Stop and exit the program"
  end
end
