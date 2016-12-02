class Printer
  def self.print(cafe_info)
    self.print_cafe_info(cafe_info)
  end

  def self.print_cafe_info(cafe_info)
    puts Time.now.strftime('%Y.%m.%d %H:%M:%S')
    puts cafe_info[:name]
    puts #linebreak
    puts cafe_info[:address]
    puts cafe_info[:phone]
  end
end