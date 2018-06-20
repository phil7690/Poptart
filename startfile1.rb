class Flat
  def initialize(size, style)
    @size = size
    @style = style
  end

  def description
    puts "This is a #{size} #{style} flat."
  end

end

class Riser
  def initialize(size, height)
    @size = size
    @height = height
  end

  def description
    puts "This is a #{size} #{style} flat."
  end

end

class Stairs
end

class Jacks
end

class Doors
end

class Windows
end

class Drapes
end

class Pipe
end

class Stands
end

user123 = Flat.new("4x8", "TV")

user123.description
