=begin

OBJECT-ORIENTED PROGRAMMING
INHERITANCE
ENCAPSULATION
POLYMORPHISM

OBJECT-ORIENTED PROGRAMMING

Programming paradigm based on objects. States and behaviours are grouped into discrete objects. Allows the programme to function as the interaction of many small parts.

Pros
- Promotes maintainability. Without walling off code, small changes in the code base can have ripple effects across program.
- Use of classes, modules and inheritance promotes code reuse.


Cons
- long programs
- less efficient to run
- difficult to understand concepts


=end

=begin
POLYMORPHISM

Polymorphism in Ruby means that the same message sent to objects of different classes can invoke different methods. 

An example of this in Ruby can be shown through two classes which have different speak methods. 

When these objects receive a speak message, they invoke different methods. We do not need to know what class the elements of the array belong to.

=end

class Cat
  def speak
    "Miaow!"
  end
end

class Dog
  def speak
    "Woof!"
  end
end

a = Cat.new
b = Dog.new

arr = [a,b]

arr.each { |animal| puts animal.speak }

=begin
ENCAPSULATION

Encapsulation is when states and behaviours of an object are hidden from other objects. Access to these states and behaviours is only provided through public methods which make up the public interface of the object. This allows for better data protection, and reduces the complex dependencies that can result if every object has access to every others object's states and behaviours.

Ruby limits access to variables through providing (or not) getter and setter methods. 
Ruby limits access to methods through access modifiers: private public and proected.

Pros

Cons

=end

class Box
   attr_reader :number_of_sides
end

class Box
   attr_reader :number_of_sides

   private

   def what_am_i
      puts 'I am a box.'
   end
end

=begin
INHERITANCE

Objects can access states and behaviours that have been defined in other classes, that are not their own.
A 


Pros
- Allows us to reuse code
- Can keep track of class variables, which might be relevant to a group of classes
- Great for modelling concepts that are inherently hierarchical

Cons
- reduces flexibility, hard to change a hierarchical structure once established.


Advantage

=end

class Animal
   @@number_of_brains = 1

   def walk
      puts 'It moves forward.'
   end
end

class Cat < Animal; end