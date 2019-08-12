```
...
print "Information desired: "
request = gets.chomp
if request == "venue"
 puts ticket.venue
elsif request == "performer"
puts ticket.performer
...
```

or using send/respond_to?

```
```
if ticket.respond_to?(request)
 puts ticket.send(request)
else
 puts "No such information available"
end

```