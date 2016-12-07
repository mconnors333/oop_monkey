require "pry"
class Monkey
  attr_accessor :name, :species, :foods_eaten

  def initialize(name, species)
    @name = name.capitalize
    @species = species
    @foods_eaten = []
  end

  def eat(food)
    if food.start_with?('a','e','i','o','u')
      puts "Foods can't start with a vowel."
    else
      @foods_eaten.push(food)
    end
  end

  def introduce
    return "#{@name} #{@species} #{@foods_eaten}"
  end
end

binding.pry
