class Order
  def initialize
    @order_so_far = []
  end

  def return_order_so_far
    @order_so_far.dup
  end

  def add_item(quantity = 1, item)
    quantity.times{ @order_so_far << item}
    return_order_so_far
  end
end