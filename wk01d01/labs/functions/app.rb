def age_plus_ten age
  age + 10
end

puts age_plus_ten 10

# splats (soak up arguments)
def say_some_words *words

  puts words

end

say_some_words "hello", "one", "two", "three"
