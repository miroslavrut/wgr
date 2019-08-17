class Bicycle
  attr_reader :gears, :wheels, :seats

  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end

  def rent
    puts "Sorry this model is sold out."
  end
end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end
  def rent
    puts "This bike is available"
  end
end

t = Tandem.new(1)   # => #<Tandem:0x000055f61c8daf78 @wheels=2, @seats=2, @gears=1>
t.method(:rent)   # => #<Method: Tandem#rent>
t.method(:rent).super_method   # => #<Method: Bicycle#rent>

t.method(:rent).call
t.method(:rent).super_method.call
t.method(:rent).super_method.super_method.call # ~> NoMethodError: undefined method `call' for nil:NilClass

# >> This bike is available
# >> Sorry this model is sold out.

# ~> NoMethodError
# ~> undefined method `call' for nil:NilClass
# ~>
# ~> program.rb:31:in `<main>'

