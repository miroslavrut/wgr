# There's no change to self, but local vars are reset(new local scope is made, self unchanged)

class C
  def x(value_for_a, recurse=false)
    a = value_for_a
    print "Here's the inspect for 'self' :"
    p self
    puts "And here's a:"
    puts a
    if recurse
      puts "Calling myself"
      x("second value for a")
      puts "Back afther recursion; here's a:"
      puts a
    end
  end
end

c = C.new
c.x("First value for a", true)

# >> Here's the inspect for 'self' :#<C:0x0000561a380d48e8>
# >> And here's a:
# >> First value for a
# >> Calling myself
# >> Here's the inspect for 'self' :#<C:0x0000561a380d48e8>
# >> And here's a:
# >> second value for a
# >> Back afther recursion; here's a:
# >> First value for a