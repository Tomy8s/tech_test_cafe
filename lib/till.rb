require_relative 'item'
require_relative 'order'
require_relative 'printer'
require_relative 'array'

class Till
  def initialize(name, address, phone, menu)
    @order_log = []
    @cafe_info = {name: name, address: address, phone: phone}
    @menu = menu
  end

  def order
    @order ||= Order.new
  end

  def return_order_so_far
    order.order_so_far.dup
  end

  def add_item(quantity = 1, item)
    quantity.times{ order.order_so_far << item }
    return_order_so_far
  end

  def remove_item(quantity = 1, item)
    quantity.times{ order.order_so_far.remove(item) }
    return_order_so_far
  end

  def return_order_log
    @order_log.dup
  end

  def print_order
    Printer.print(@cafe_info, @order)
    @order = Order.new
  end
end