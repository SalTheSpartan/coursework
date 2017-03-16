#basic if statement

if 5 < 10
  puts "Yes 5 is less than 10"
end

#onel liner

if 6 < 10 then puts "Yes 6 is less than 10" end

  # if else statement

if 10 < 5
  puts "not true wont run"
else
  puts "Nope 10 is noyt less then 5"
end


if 10 < 5 then puts "not true wont run" else puts "Nope 10 is not less then 5" end

#else if

if 50 > 5
  puts "50 is greater than 5"
elsif 10 < 20
  puts "10 is less than 20"
else
  puts "Neither are true"
end

#unless
my_var = 5

unless my_var > 10
  puts "my var is not greater than 10"
end

#unless onliner
my_var = 5

unless my_var > 10 then puts "my var is not greater than 10" end

#ternary

my_boolean = true

puts my_boolean ? "It's true" : "it's false"

#comparisons that are different from JS

#spaceship -1 left is less then right, 0 same , 1 left is greater than right

a = 20
b = 20
puts a <=> b

#truthy everything else | falsey = nil and false

my_array = []

if my_array
  puts "my array exists"
end

if my_array.length
  puts "this doesn't mean theres anything in the array"
end

#more specific camparisons
# .eql compares values
# .equal compares objects

my_second_array = [1,2,3,4]
another_array = my_second_array

if my_second_array.eql? another_array
  puts "these are eql"
end

if my_second_array.equal? another_array
  puts "these are equal"
end


#Short circuiting

if true || 5 < 10
    puts "One of these was true"
end

#real world short circuiting

def store_value
  #do something to store value then return
end

# real world example
def log_startup_attempts
  # increase the log counter

  # return the number attempts
end

new_machines_blocked = true
#log_startup_attempts is a function, because of short circuiting won't be called
#or || runs right to left
if new_machines_blocked || log_startup_attempts > 10
  puts "you cannot start any more machines"
end

# and && runs left to right
# if new_machines_blocked && log_startup_attempts > 10
#   puts "you really cannot start any more machines"
# end

#switch statements
grade = "A"

case grade
when "A"
  puts 'Well done!'
when "B"
  puts 'Try Harder!'
when "C"
  puts 'You need help!!!!'
else
  puts 'You just making it up'
end
