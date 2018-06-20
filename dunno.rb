
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

class Flat
  def initialize(size, style)
    @size = size
    @style = style
  end

# things that don't fit anywhere else
  def notes
    @other = other

  def description
    puts "This is a #{size} #{style} flat."
  end

end



class Flat
  include Contact

  attr_reader :width, :height, :style, :finish

  def initialize(width, height, style, finish)
    @width = width
class Riser
  def initialize(size, height)
    @size = size
    @height = height
    @style = style
    @finish = finish
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
@ -68,19 +43,6 @@ end
class Stands
end

user123 = Flat.new("4x8", "TV")

File.open("flat_input.txt", "w") do |line|
puts "Enter width: "
width = gets.chomp
puts "Width: #{width}"
puts "Enter height: "
height = gets.chomp
puts "Height: #{height}"
puts "Enter style (TV or Theatre): "
style = gets.chomp
puts "Style: #{style}"
puts "Enter Finish (painted, bare, etc.): "
finish = gets.chomp
puts "Finish: #{finish}"
line.puts width, height, style, finish
end
user123.description
