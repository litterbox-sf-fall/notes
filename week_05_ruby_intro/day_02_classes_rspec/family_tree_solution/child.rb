require_relative 'grandparent'
require_relative 'parent'

class Child < Parent
  attr_accessor :name, :age, :gender
  def initialize(name,age,gender)
    super(name,age,gender)
    @@children +=1
    @@grandchildren +=1
  end

end