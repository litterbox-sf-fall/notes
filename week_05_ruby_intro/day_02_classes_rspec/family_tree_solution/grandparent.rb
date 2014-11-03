class Grandparent
  attr_accessor :name, :age, :gender
  @@grandchildren = 0
  def initialize(name,age,gender)
    @name = name
    @age = age
    @gender = gender
  end

  def self.grandchildren
    @@grandchildren
  end


end