class Item
  attr_reader :name
  attr_accessor :price

  def  initialize(name, price)
    @name = name
    @price = price.to_i
  end
end