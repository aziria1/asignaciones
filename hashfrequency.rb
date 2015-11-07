sentences = []
puts 'Enter some text'

while true
  print '>'
  sentences = gets.chomp

  break if sentences == ""
  sentences << sentences
end

words = []

sentences.each do |sentence|
  words = words + sentence.tr("!,.?:;").downcase.split" "
end

frequency = Hash.new 0

words.each do | word |
  frequency [ word ] = frequency [ word ] + 1
end

frequency = frequency.sort_by { |k, v| v }.reverse

frequency.each do | pair |
  puts "#{pair[1] + "=" + pair[0]}"
end
