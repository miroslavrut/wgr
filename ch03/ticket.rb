class Ticket
  def initialize(venue)
    @venue = venue
  end

  def price
    @price
  end
  def venue
    @venue
  end
  def date
    @date
  end

  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amount
    else
      puts "The price seems to be malformed"
    end
  end

  def date=(date)
    year, month, day =  date.split("-")
    if year.length == 4 && month.length == 2 && day.length == 2
      @date = date
    else
      puts "wrong format, input 'yyyy-mm-dd'"
    end
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.0
    return "%.2f" % @price
  end
end

th = Ticket.new("Town Hall")
th.date = "2019-06-12"
th.price = 123.45

puts "The ticket is for an event on #{th.date} at #{th.venue}."
puts "The ticket for #{th.venue} has been discounted 15% to $#{th.discount(15)}"
th.date = "19-06-12"   # => "19-06-12"
# >> wrong format, input 'yyyy-mm-dd'

# allow both yy-mm-dd and yyyy-mm-dd
class TravelAgentSession
  def year=(y)
    @year = y.to_i
    if @year < 100
      @year += 2000
    end
  end
end
