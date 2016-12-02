require_relative 'item'

class Menu
  def initialize
    @items = []
  end

  def return_items
    @items.dup
  end

  def add_item(name, price)
    item_exists?(name)
    item = Item.new(name, price)
    @items << item
    return_items
  end

  private

  def item_exists?(name)
    @items.each do |item|
      if item.name == name
        raise ArgumentError, 'An item with this name already exists' 
      end
    end
  end
end