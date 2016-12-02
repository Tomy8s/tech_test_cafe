require 'json'
require_relative 'menu'

class Load
  def initialize
    @menu = Menu.new
  end

  def file_to_text
    raw_data = ""
    File.open('hipstercoffee.json', 'r') do |l|
      while line = l.gets
        raw_data << line
      end
    end
    raw_data
  end

  def parse_json
    @cafe_data = JSON.parse(file_to_text)
  end

  def load_menu
    parse_json[0]['prices'][0].each do |name, price|
      @menu.add_item(name, 100*price)
    end
    @menu
  end

  def load_till
    Till.new(parse_json[0]['ShopName'], parse_json[0]['address'], parse_json[0]['phone'], @menu)
  end
end

Load.new