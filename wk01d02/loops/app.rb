ruby
# for loop

for i in 0..5
  puts "index is #{i}"
end

array_of_values = ["steve" , "bob" , "sparta"]

for name in array_of_values
  puts "name was : #{name}"
end

# while loops

counter = 0

while counter <= 10
  puts "counter : #{counter}"
  counter+=1
end


# until

until counter == 0
  puts "counter is now #{counter}"
  counter-=1
end

# each

array_of_values.each do |value|
   puts "I pulled these values out of the array : #{value}"
end

# each with index
array_of_values.each_with_index do |value,index|
  puts "value : #{value} index : #{index}"
end

# map
numbers_array = [1,2,3,4,5]

squared_array = numbers_array.map do |value|
  value * value
end

puts squared_array

# there is a map! function as well that changes the original array

# reduce ( aka inject )

sum_array = [1,3,4,7,20]

total = sum_array.reduce(:+)

# find the longest word

words = ["Lexie" , "Steve" , "Bob" , "Oliver" , "Niall"]

longest = words.inject do |memo, word|
   memo.length > word.length ? memo : word
end
puts longest
