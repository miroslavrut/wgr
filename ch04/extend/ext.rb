module Convertible
  def c2f(celsius)
    celsius * 9.0 / 5 + 32
  end

  def f2c(fahrenheit)
    (fahrenheit - 32) * 5 / 9.0
  end
end

class Thermometar
  extend Convertible
end


puts Thermometar.c2f(100)
puts Thermometar.f2c(212)

# >> 212.0
# >> 100.0

# Notice that we don’t create class methods here. This is achieved by the 
# extend keyword:


