class Grandparent
  attr_accessor :name, :age, :gender
  @@grandchildren = 0
  @@family = []
  def initialize(name,age,gender)
    @name = name
    @age = age
    @gender = gender
  end

  def self.grandchildren
    @@grandchildren
  end

  def self.family
    @@family
  end

  def addToFamily(grandparent)
    @@family << grandparent
  end

  def self.showFamily
    famTree = []
    fam = {}
    @@family.each do |family|
      fam = {
        member: family.class,
        name: family.name,
        age: family.age
      }
      famTree << fam
    end
  end
end

# g = Grandparent.new("Sam",44,"male")
# g.addToFamily(g)

