require_relative 'item'
require_relative 'order'
require_relative 'array'

class Till
  def initialize
    @order = Order.new
  end

  def return_order_so_far
    @order.order_so_far.dup
  end

  def add_item(quantity = 1, item)
    quantity.times{ @order.order_so_far << item }
    return_order_so_far
  end

  def remove_item(quantity = 1, item)
    quantity.times{ @order.order_so_far.remove(item) }
    return_order_so_far
  end
  
end