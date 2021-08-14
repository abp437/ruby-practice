require "./animal"

class Bird < Animal
  def talk
    puts "#{@name} says Chirp! Chirp!"
  end

  def move(destination)
    puts "#{@name} flies to #{destination}."
  end
end
