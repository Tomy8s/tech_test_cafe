require 'spec_helper'

describe Order do
  describe '#add_item' do
    it 'adds an item to the order_so_far array' do
      expect(subject.add_item(Item.new('coffee',342)).size).to eq 1
    end

    it 'adds an multiple items to the order_so_far array' do
      num_items = rand(100)
      expect(subject.add_item(num_items, Item.new('coffee',342)).size).to eq num_items
    end
  end
end