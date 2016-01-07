puts "Enter your 5 favorite foods: "

favs = []

5.times do
  favs << gets.chomp
end

favs.each do |food|
  puts "I love " + food
end

list_number = 0

favs.each do |food|
  list_number = list_number + 1
  puts list_number.to_s + ". " + food
end

