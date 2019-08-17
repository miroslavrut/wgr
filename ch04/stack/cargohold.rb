require_relative "stacklike"

class Suitcase
end

class CargoHold
  include Stacklike

  def load_and_report(obj)
    print "Loading object "
    puts obj.object_id
    add_to_stack(obj)
  end

  def unload
    take_from_stack
  end
end

ch = CargoHold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new
ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)

first_unloaded = ch.unload
print "The first suitcase off the plane is..."
puts first_unloaded.object_id

# >> Loading object 47110384907480
# >> Loading object 47110384907460
# >> Loading object 47110384907440
# >> The first suitcase off the plane is...47110384907440



