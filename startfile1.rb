require 'csv'

#  if user input = flat build .new from class.
# or can you do user input = class x build .new from class???
print "Need a name: "
name = gets.chomp

print "What do you want to swap?"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "flat"
  File.open(name+ "_" + user_input + ".csv", "w") do |line|
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
    line.puts width, height, style, finish
  end
elsif user_input.include? "riser"
  puts "gonna build a riser.."

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
  def info
    @address = address
    @phone = phone
    @email = email
    @delivery = delivery
    @date_back = date_back
  end



# things that don't fit anywhere else
  def notes
    @other = other
  end

end



class Flat
  include Contact

  attr_reader :width, :height, :style, :finish

  def initialize(width, height, style, finish)
    @width = width
  end

  def description
    puts "This is a #{size} #{style} flat."
  end

end

class Riser
end

class Stairs

end

class Jacks
end

class Stands
end



# File.open("flat_input.csv", "w") do |line|
#puts "Enter width: "
#width = gets.chomp
#puts "Width entered: #{width}"
#puts "Enter height: "
#height = gets.chomp
#puts "Height entered: #{height}"
#puts "Enter style (TV or Theatre): "
#style = gets.chomp
#puts "Style entered: #{style}"
#puts "Enter Finish (painted, bare, etc.): "
#finish = gets.chomp
#puts "Finish entered: #{finish}"
#line.puts width, height, style, finish
#end
