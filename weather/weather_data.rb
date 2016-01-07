  #make string in to an array
  #seperate elements of the array
  #go thru each day and subtract Mnt from Mxt
  #compare the answer from each day
  #find the smallest number/difference and present that number

  input = File.open('./weather.dat', File::RDONLY){|f| f.read }
  array = input.lines.map(&:split)

p h3 = Hash[array.map {|1, row1| [2, row2]}]



#array.each do |diff|
 #diff = 
#end

