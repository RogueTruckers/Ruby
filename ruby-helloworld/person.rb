class Person
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def password_set (password)
    @password = password
  end
  def password
    @password
  end
  def greet(other)
    puts "Hello there, " + other.name  + ". My name is " + self.name + "."
  end
end

person = Person.new("Sami")
puts person.name
puts "Please write a password"
@password = gets.chomp
person.password_set(@password)
puts "Your password is: "  + person.password

person2 = Person.new("Sarah")
person.greet(person2)
