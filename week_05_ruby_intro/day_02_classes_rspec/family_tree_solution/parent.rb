require_relative 'grandparent'

class Parent < Grandparent
  attr_accessor :name, :age, :gender
  @@children = 0
  def initialize(name,age,gender)
    super(name,age,gender)
  end

  def self.children
    @@children
  end

  def addToFamily(parent)
    @@family << parent
  end

end

# p = Parent.new("bob",32,"male")
# p.addToFamily(p)