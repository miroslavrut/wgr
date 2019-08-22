class Person
  attr_accessor :first_name, :middle_name, :last_name
  def whole_name
    n = first_name + " "
    n << "#{middle_name} " if middle_name
    n << last_name
  end
 end
 david = Person.new
 david.first_name = "David"
 david.last_name = "Black"
 puts "David's whole name: #{david.whole_name}"
 david.middle_name = "Alan"
 puts "David's new whole name: #{david.whole_name}"

# =>David's whole name: David Black

# =>David's new whole name: David Alan Black


# In addition to serving automatically as the receiver for bareword messages, self also
# enjoys the privilege of being the owner of instance variables. 
# The definition of whole_name depends on the bareword method calls to first_name,
# middle_name, and last_name being sent to self—self being the Person instance