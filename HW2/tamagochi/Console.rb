class Console
  COM = %w[play water toilet sleep].freeze

  def welcome
    cls
    puts "Hello its game 'Life of dogs and hamster in korea', input name of your pets"
    name = gets.chomp
    cls
    puts 'dog or hamster'
    type = ''
    while type == 'dog' || 'hamster'
      case
      when type == 'dog'
        @animal = Dog.new(name)
        return
      when type == 'hamster'
        @animal = Hamster.new(name)
        return
      else
        puts 'Please enter the type correctly'
        type = gets.chomp.downcase
      end
    end
  end

  def who_i_am
    cls
    puts "You created #{@animal.class} called '#{@animal.name} '"
  end

  attr_reader :animal

  def level_desires
    cls
    @animal.growth
    x = @animal.want_sleep
    y = @animal.want_toilet
    z = @animal.want_water
    q = @animal.want_play
    puts "Your #{@animal.class} desire level,desire will constantly grow"
    puts "If you do not have time to satisfy the desire, death will come \n\n"

    puts "#{@animal.class} has #{@animal.age}  years old"
    print "its level fo dead -----------------------/ \n"
    print "want_sleep #{' - ' * x}\n"
    print "want_toilet #{' - ' * y}\n"
    print "want_water  #{' - ' * z}\n"
    print "want_play   #{' - ' * q}\n \n"
    dead
    do_it(@animal)
  end

  def do_it(animal)
    puts COM.join(', ')
    puts ' you have choice '
    comand = gets.chomp.downcase
    puts "your #{@animal.class} will be #{comand} "
    case comand
    when 'play'
      animal.play
    when 'water'
      animal.water
    when 'toilet'
      animal.toilet
    when 'sleep'
      animal.sleep
    end
  end

  def dead
    puts
    if @animal.dead?
      puts "your #{@animal.class} is dead"
      sleep 5
      abort
    end
  end

private

  def cls
    system 'clear' or system 'cls'
  end
end
