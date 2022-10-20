load 'candy.rb'

class Shelf
  def initialize
    @candies = Hash.new
  end
  def add_new(object, number)
    @candies[object] = number
    object.candy_shelved = true
  end
  def remove_old(object)
    object.candy_shelved = false
    @candies.delete(object)
  end
  def find_candy(name)
    @candies.each_key {|object|
      if name.downcase! == object.name.downcase!
        return object
      else
        return -1
      end
    }
  end
  def qty (object)
    @candies[object]
  end
  def remove_all
    @candies.each_key {|object| object.candy_shelved = false}
    @candies.clear
  end
  def items_on_shelf
    if @candies.length>0
      puts "There are " + @candies.length.to_s + " candy(ies) on this shelf and they are: "
      @candies.each do |name, number|
        puts "  " + name.name + " has " + number.to_s + " on the shelf."
      end
    else
      puts "There are " + @candies.length.to_s + " candy(ies) on this shelf."
    end

  end
end