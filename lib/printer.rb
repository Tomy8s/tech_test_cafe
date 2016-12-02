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
    puts cafe_info[:name].center(30)
    puts #linebreak
    puts cafe_info[:address].center(30)
    puts cafe_info[:phone].center(30)
  end

  def self.print_order(order)
    order = order.dup
    while order.size > 0
      quantity = order.count(order[0])
      item = order.delete(order[0])
      puts item.name + (quantity.to_s + ' x ' + item.price.to_s.insert(-3, '.')  + ' = ' + (quantity * item.price).to_s.insert(-3, '.')).rjust(30 - item.name.length)
    end
  end

  def self.print_total(order)
    total = order.collect{ |item| item.price }.reduce(:+)
    puts ('total ' + total.to_s.insert(-3, '.').rjust(7)).rjust(30)
    puts ('of which VAT at 20% ' + (0.2 * total).round.to_s.insert(-3, '.').rjust(7)).rjust(30)
  end
end