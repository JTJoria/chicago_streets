# enter an even number ofnames
# when all names enter type done
# randomize names
# puts names out in groups of two

puts ""
puts "Please enter the students' names and press enter"
puts ""
puts "When all students have been inputed, type done"

names = []

input = ""

until input.downcase == "done"
  input = gets.chomp
  names << input
end

names.pop

if names.length.even?
  names.shuffle.each_slice(2) do |pairs|
      puts "Group: " + pairs.join(" ")
  end
end



