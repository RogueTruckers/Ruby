load 'candy.rb'
load 'shelf.rb'
load 'shop.rb'

options =  "  candy: to add a candy\n  shelf: put a candy on the shelf\n  find: find a candy on a known shelf\n  remove: remove a candy from the shelf\n  new shelf: to add a shelf\n  remove shelf: remove a shelf\n  inventory: prints the store's inventory\n  cancel: ends the program"
continue = true

shop = Shop.new
puts "Welcome to your candy shop's inventory control program."

while continue
  puts "Please type an option below and press enter to begin:"
  puts options
  user = gets.chomp
  user.downcase!
  case user
  when "candy"
    puts "What is the candy's name?"
    candy_name = gets.chomp
    shop.new_candy(Candy.new(candy_name, false))
  when "remove"
    puts "CAUTION! THIS WILL DELETE THE STOCK OF THE PRODUCT! \nWhat candy would you like to remove?"
    candy_name = gets.chomp
    puts "From which shelf would you like to remove " + candy_name + " from?"
    num_shelf = gets.chomp.to_i - 1
    candy = shop.find_candy2(num_shelf, candy_name)
    shop.remove_candy(num_shelf, candy)
  when "find"
    puts "On which shelf would you like to look at?"
    num_shelf = gets.chomp.to_i - 1
    puts "Which candy are you looking for?"
    candy_name = gets.chomp
    shop.find_candy(num_shelf, candy_name)
  when "shelf"
    puts "Which candy would you like to place on a shelf?"
    candy_name = gets.chomp
    candy = shop.find_candy1(candy_name)
    if candy == -1
      puts "Candy is either on a shelf or not in the store."
    else
      puts "Which shelf would you like to add it to?"
      shelf_num = gets.chomp.to_i - 1
      puts "How many are there?"
      qty = gets.chomp.to_i
      shop.add_new(shelf_num, candy, qty)
      puts "Successfully added to shelf"
    end
  when "new shelf"
    shop.new_shelf(Shelf.new)
    puts "Successfully created shelf " + shop.num_shelves.to_s
  when "remove shelf"
    puts "CAUTION! ALL PRODUCTS AND STOCK WILL BE DISCARDED!\nWhich shelf would you like to remove?"
    num_shelf = gets.chomp.to_i
    shop.remove_shelf(num_shelf-1)
  when "inventory"
    shop.store_inventory
  when "cancel"
    continue = false
  else
    puts "I am sorry. Please try again"
  end
  puts "\n"
end