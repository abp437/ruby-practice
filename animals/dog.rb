require "./animal"

class Dog < Animal
  # This method is overridden from Ruby's Object class
  # Object class is the super class of all the objects in Ruby
  def to_s
    puts "#{@name} the dog, age #{@age}"
  end
end
