class Candy
  def initialize(name, shelved)
    @name = name
    @candy_shelved = shelved
  end
  def item
    if candy_shelved
      puts "Candy Name: " + name + ", Shelved: True"
    else
      puts "Candy Name: " + name + ", Shelved: False"
    end
  end
  attr_accessor :name
  attr_accessor :candy_shelved
end