class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
    @age = 1
    @t_born = Time.new.to_i
    @want_sleep = 0
    @want_toilet = 0
    @want_water = 0
    @want_play = 0
  end

  def sleep
    @want_sleep -= 1 if @want_sleep > 0
  end

  def toilet
    @want_toilet -= 1 if @want_toilet > 0
  end

  def play
    @want_play -= 1 if @want_play > 0
  end

  def water
    @want_water -= 1 if @want_water > 0
  end



  def growth  # увеличиваем возраст с течением времени
    t_now = Time.new.to_i

    x = t_now - @t_born
    if x > 15
      @t_born = t_now
      @age += 1
      @want_sleep += rand(4)
      @want_toilet += rand(8)
      @want_water += rand(4)
      @want_play += rand(8)

    elsif x > 5
      puts x.to_s
      @t_born = t_now
      @age += 1
      @want_sleep += rand(3)
      @want_toilet += rand(4)
      @want_water += rand(3)
      @want_play += rand(4)

    else
      x > 2
      puts x.to_s
      @t_born = t_now
      @age += 1
      @want_sleep += rand(3)
      @want_toilet += rand(3)
      @want_water += rand(3)
      @want_play += rand(3)

    end
  end

  attr_reader :age, :want_sleep, :want_toilet, :want_water, :want_play

  def dead?
    if @age > 10
      true
    elsif @want_sleep > 10
      true
    elsif @want_toilet > 10
      true
    elsif @want_water > 10
      true
    elsif @want_play > 10
      true
    end
  end
end
