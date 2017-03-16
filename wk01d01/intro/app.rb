require 'mac/say'


talker = Mac::Say.new(voice: :alex, rate: 300)
talker.say string: 'DevOPs Rule'
