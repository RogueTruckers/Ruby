candies = Hash.new
candies["Sami"] = 1
candies["Sarah"] = 2
candies["Samantha"] = 3
candies.each { |name| p name }
candies.delete("Sami")
puts "\n"
candies.each { |name| p name }

=begin Calculator Runner
load 'calculator.rb'
@calculator = "sami"
@calculator = Calculator.new
puts @calculator
-end

=begin This is starting code
puts "Please enter your name"
name = gets.chomp
puts "Hello, #{name}! I'm Ruby!"
=end