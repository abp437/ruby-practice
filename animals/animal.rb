class Animal
  attr_reader :name, :age

  def initialize

  end

  def name=(name)
    if name.empty?
      raise "Name can't be blank"
    end

    @name = name
  end

  def age=(age)
    if age < 0
      raise "Age can't be negative"
    end

    @age = age
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def move(destination)
    puts "#{@name} runs to #{destination}."
  end
end
