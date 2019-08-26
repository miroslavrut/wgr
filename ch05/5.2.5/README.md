to avoid using class variables:
We’ve made it so that a subclass of Car can maintain its own state, because we’ve
shifted from a class variable to an instance variable. Every time total_count or
total_count= is called, the @total_count to which it refers is the one belonging to
self at that point in execution. Once again, we’re back in business using instance variables to maintain state per object (class objects, in this case).