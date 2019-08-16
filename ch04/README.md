### NOTES

* _Stacklike module_- When an object is added to the stack the operation is handled by pushing the
object onto the @stack array—that is, adding it to the end. (@stack is accessed
through a call to the stack method, which ensures that it will be initialized to an
empty array the first time an object is added.) Removing an object from the stack 
involves popping an element from the array—that is, removing it from the end.

* Stacklike thus implements stacklikeness by selectively deploying
behaviors that already exist for Array objects: add an element to the end of the array,
take an element off the end

* use
adjectives for module names to reinforce the notion that the module defines a behavior. What we end up with, expressed in everyday language, is a kind of predicate on
the class: Stack objects are stacklike. That’s English for:
```
class Stack
  include Stacklike
end
```
* Nonmodular rewrite of Stack class
```
class Stack
  attr_reader :stack
  def initialize
    @stack = []
  end
  def add_to_stack(obj)
    @stack.push(obj)
  end
  def take_from_stack
    @stack.pop
  end
end
```
Modulation allows aplying a general concept like stacklikeness to severall cases, not just one