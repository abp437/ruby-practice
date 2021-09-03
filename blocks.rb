def sum(arr)
  sum = 0

  i = 0
  while i < arr.length
    sum += arr[i]
    # There's no `++` operator in Ruby, so you'll have to rely upon the good old `+= 1` for increments
    i += 1
  end
  sum
end

# Strings are expressions so, they are implicitly returned from functions without a return keyword
# So, we generally use them in switch statements
# Note that there's no switch statement in Ruby, intead we have the 'case' expression
def test_switch_return(greeting)
  case greeting.strip.downcase
  when 'hello'
    'Hello, Akshay'
  when 'num'
    'Hey there, here\'s my number'
  when 'guten', 'tag', 'heil'
    'Sieg Heil! Guten Tag, Mein Fuhrer.'
  when 'evening'
    'Evening is the time for Coffee'
  else
    'You passsed some shit'
  end
end

def test_if_return
  if nil == true
    return 'Hello'
  end

  'World'
end

puts sum([1,23,4,4])
puts test_switch_return(' Heil')
puts test_if_return


=begin

If you place an ampersand before the last parameter in a method definition, Ruby
will expect a block to be attached to any call to that method. It will take the block,
convert it to an object, and store it in that parameter.

=end
def function_with_block_as_arg(block_arg, &callback_block)
  puts 'Battlezones littered with Charred and Broken Tanks'
  callback_block.call(block_arg)
  puts 'For Survivors of this Savage Inferno, there can be no joy'
end

function_with_block_as_arg('Shattered, Shellshocked') do |block_arg = 'Default Arg'|
  puts "Bodies of hundreds of thousands of men #{block_arg}"
end
