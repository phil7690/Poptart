require 'csv'

SET_FILE = "set_pieces.csv"

#  if user input = flat build .new from class.
# or can you do user input = class x build .new from class???


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
# https://codereview.stackexchange.com/questions/46928/building-shape-based-on-user-input
# https://stackoverflow.com/questions/34417655/using-classes-and-methods-with-user-input-for-an-interactive-program

def flat()
  open(SET_FILE, 'a') do |line|
    puts "Enter username: "
    name = gets.chomp
    puts "Enter length: "
    length = gets.chomp
    puts "Length entered: #{length}"
    puts "Enter width: "
    width = gets.chomp
    puts "Wdith entered: #{width}"
    puts "Enter style (TV or Theatre): "
    style = gets.chomp
    puts "Style entered: #{style}"
    puts "Enter Finish (painted, bare, etc.): "
    finish = gets.chomp
    puts "Finish entered: #{finish}"
    line.print name, ",", "flat,", length,",", width,",", style,",", finish, ",","\n"
  end
end





def riser()
  open(SET_FILE, 'a') do |line|
    puts "Enter username: "
    name = gets.chomp
      puts "Enter length: "
      length = gets.chomp
      puts "Length entered: #{length}"
      puts "Enter width: "
      width = gets.chomp
      puts "Width entered: #{width}"
      puts "Enter depth: "
      depth = gets.chomp
      puts "Depth entered: #{depth}"
      puts "Enter Finish (painted, bare, etc.): "
      finish = gets.chomp
      puts "Finish entered: #{finish}"
    line.print name, ",", "riser,", length,",", width,",", depth,",", finish, ",","\n"
   end
end

  def stair()
   open(SET_FILE, 'a') do |line|
     puts "Enter username: "
     name = gets.chomp
     puts "Enter length: "
     length = gets.chomp
     puts "Length entered: #{length}"
     puts "Enter width: "
     width = gets.chomp
     puts "Width entered: #{width}"
     puts "Enter depth: "
     depth = gets.chomp
     puts "Depth entered: #{depth}"
     puts "Enter Finish (painted, bare, etc.): "
     finish = gets.chomp
     puts "Finish entered: #{finish}"
     puts "Enter rise: "
     rise = gets.chomp
     puts "Enter run: "
     run = gets.chomp
     puts "Enter number of steps: "
     steps = gets.chomp
     line.print name, ",", "stairs,", length,",", width,",", depth,",",  finish, ",",rise, ",", run,",", steps, ",","\n"
   end
 end


while true
  puts "You getting rid of a flat, riser or stair? "
  input = gets.chomp.downcase
  if %w(flat riser stair).include?(input)
    send("#{input}")
    break
  else
    puts "No, pick one."
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
