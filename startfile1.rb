require 'csv'

set_file = "set_pieces.csv"

#  if user input = flat build .new from class.
# or can you do user input = class x build .new from class???
print "Need a name: "
name = gets.chomp

print "What do you want to swap?"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "flat"
# this line is broken. I just want it to write to the set_file
open(set_file, 'a') do |line|
    puts "Enter width: "
    width = gets.chomp
    puts "Width entered: #{width}"
    puts "Enter height: "
    height = gets.chomp
    puts "Height entered: #{height}"
    puts "Enter style (TV or Theatre): "
    style = gets.chomp
    puts "Style entered: #{style}"
    puts "Enter Finish (painted, bare, etc.): "
    finish = gets.chomp
    puts "Finish entered: #{finish}"
    line.print name, ",", "flat,", width,",", height,",", style,",", finish, ",","\n"
  end
elsif user_input.include? "riser"
  open(set_file, 'a') do |line|
    puts "Enter width: "
    width = gets.chomp
    puts "Width entered: #{width}"
    puts "Enter depth: "
    depth = gets.chomp
    puts "Depth entered: #{depth}"
    puts "Enter height: "
    height = gets.chomp
    puts "Height entered: #{height}"
    puts "Enter Finish (painted, bare, etc.): "
    finish = gets.chomp
    puts "Finish entered: #{finish}"
    line.print name,",","riser,", width,",", depth,",", height,",", finish, ",", "\n"
  end
else
  # eventually this will be an option to create a new class
  print "type not found"
end

# contact info for each posting
module Contact

# should have added date, available until
  def date
    @time = Time.new
    puts @time

  end
# should have address, pick up/deliver, return status
  def info(text)
    @address = address
    @phone = phone
    @email = email
    @delivery = delivery
    @date_back = date_back
  end



# things that don't fit anywhere else
  def notes(text)
    @other = other
  end

end

# https://stackoverflow.com/questions/42891288/creating-a-class-based-on-user-input

class Flat
  include Contact
  attr_accesor :width, :height, :style, :finish
end

flats =

class Riser
end

class Stairs

end

class Jacks
end

class Stands
end
