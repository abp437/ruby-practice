class Employee
  attr_reader :name

  def name=(name)
    if name == ""
      raise "Name can't be blank"
    end

    @name = name
  end

  def initialize(name = "Unnamed")
    # These aren't local variable assignments, these are actually a call to the
    # attribute writer methods, which have validations defined in them.
    self.name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end

=begin

Some useful class and instance methods:

Instance:
amy.class.ancestors
amy.instance_variables

Class:
Employee.instance_methods
Employee.public_methods
Employee.private_methods

=end
