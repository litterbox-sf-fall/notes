class Animal
  attr_accessor :kind
  def initialize(kind)
    @kind = kind
    @state = "awake"
  end

  def self.greet
    puts "hello"
  end

  def eat(food)
    if @state == "awake"
      puts "NOM-nom!!"
      puts "#{@kind} has eaten #{food}"
    else
      puts "SLEEPING"
    end
    self
  end

  def sleep
    @state = "sleeping"
  end

  def wake
    @state = "awake"
  end
end
