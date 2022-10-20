load 'candy.rb'
load 'shelf.rb'
class Shop
  def initialize
    @shelves = Array.new
    @unshelved = Array.new
  end
  def new_shelf(object)
    @shelves.push(object)
  end
  def new_candy(candy)
    @unshelved.push(candy)
  end
  def add_new(shelf, object, number)
    @shelves[shelf].add_new(object, number)
  end
  def remove_shelf(spot)

    @shelves[spot].remove_all
  end
  def find_candy(shelf, name)
    candy =  @shelves[shelf].find_candy(name)
    puts "There is (are) " + @shelves[shelf].qty(candy).to_s + " " +  candy.name + " on shelf " + shelf+1.to_s
  end
  def find_candy2(shelf, name)
    @shelves[shelf].find_candy(name)
  end
  def find_candy1(name)
    @unshelved.each {|object|
      if name.downcase! == object.name.downcase!
        candy = object
        @unshelved.delete(object)
        return candy
      else
        return -1
      end
    }
  end
  def num_shelves
    @shelves.length
  end
  def remove_candy(shelf, candy)
    @unshelved.push(candy)
    @shelves[shelf].remove_old(candy)
  end
  def store_inventory
    puts "\n \n \n \n"
    if @unshelved.length>0
      puts "These candies are not on a shelf: "
      @unshelved.each {|candy| puts "  " + candy.name}
    else
      puts "All candies are on a shelf. "
    end
    if @shelves.length>0
      @shelves.each {|shelf| shelf.items_on_shelf}
    else
      puts "There are no shelves."
    end
  end
end