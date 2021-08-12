# Guess My Number Game
# Written by: Akshay Pawar

puts "Welcome to 'Guess My Number!'"
print "What's your name? "
user_name = gets
user_name.chomp!

puts "Welcome, #{user_name}!"

num_to_guess = rand(100)
chances_to_guess = 10
user_guessed_correct = false

puts "Guess a number from 0 - 100 in #{chances_to_guess} chances"

1.upto(chances_to_guess) do |i|
  guess = gets
  user_guess = guess.to_i

  if user_guess === num_to_guess
    user_guessed_correct = true
    puts "Good job, #{user_name}! You guessed my number in #{i} guesses!"
    break
  elsif user_guess > num_to_guess
    puts "Oops. Your guess was HIGH, try again!"
  else
    puts "Oops. Your guess was LOW, try again!"
  end

  chances_to_guess -= 1
  puts "#{chances_to_guess} guesses left!"
end

unless user_guessed_correct
  puts "Sorry, you didn't get my number, the number was #{num_to_guess}."
end
