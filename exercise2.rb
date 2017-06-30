class Cat

  def initialize(name, preferred_food, meal_time)
    @name             = name
    @preferred_food   = preferred_food
    @meal_time        = meal_time
  end

  def eats_at
    if @meal_time < 12
      puts "#{@name} eats at #{@meal_time} AM."
    else
      puts "#{@name} eats at #{@meal_time - 12} PM."
    end
  end

  def meow
    puts "My name is #{@name} and I like to eat #{@preferred_food} at #{@meal_time}"
  end
end

new_cat_one = Cat.new("Emma","Whiskers",11)
new_cat_two = Cat.new("Patches","Cesars Premium",18)

new_cat_one.eats_at
new_cat_two.eats_at

new_cat_one.meow
new_cat_two.meow
