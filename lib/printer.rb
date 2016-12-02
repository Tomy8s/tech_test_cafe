require 'order'

class Printer
  def self.print(cafe_info, order)
    self.print_cafe_info(cafe_info)
    puts #linebreak
    self.print_order(order)
    puts #linebreak
    self.print_total(order)
  end

  def self.print_cafe_info(cafe_info)
    puts Time.now.strftime('%Y.%m.%d %H:%M:%S')
    puts cafe_info[:name]
    puts #linebreak
    puts cafe_info[:address]
    puts cafe_info[:phone]
  end

  def self.print_order(order)
    order = order.dup
    while order.size > 0
      quantity = order.count(order[0])
      item = order.delete(order[0])
      puts item.name + quantity.to_s + ' x ' + item.price.to_s.insert(-3, '.')  + ' = ' + (quantity * item.price).to_s.insert(-3, '.')
    end
  end

  def self.print_total(order)
    puts "total" + order.collect{ |item| item.price }.reduce(:+).to_s.insert(-3, '.')
  end
end