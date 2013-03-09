class Test
               def initialize name
    @name = name
               end
  def name
    return @name
  end
end

name = "some name"

def m_1(name)
  if "some name" == @name
    return name + "test"
  end
  return "123"
end

def m_2
  return "uu"
end

class Zhivela
  attr_reader :name

  def initialize name
    @name = name
  end
end

a = Test.new("I want to print this line somewhere")
puts(m_1(a.to_s))
puts a.name
puts Zhivela.new("Belka")
puts "just radok"