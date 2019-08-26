class Car
  @@makes = []
  @@cars = {}


  attr_reader :make
  
  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def self.total_count
    @total_count ||= 0
  end

  def self.total_count=(n)
    @total_count = n
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}"
      @make = make
      @@cars[make] += 1
      self.class.total_count += 1
    else
      raise "Error, unknown make"
    end
  end

  def make_mates
    @@cars[self.make]
  end
end

class Hybrid < Car
end

h3 = Hybrid.new("Honda")
f2 = Hybrid.new("Ford")

Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts "Counting total cars..."
puts "There are #{Car.total_count}."
puts "Counting cars of same make as h2..."
puts "There are #{h2.make_mates}."

# >> Creating a new Honda
# >> Creating a new Ford
# >> Creating a new Honda
# >> Counting total cars...
# >> There are 3.
# >> Counting cars of same make as h2...
# >> There are 2.