require 'spec_helper'

describe Order do
  describe '#add_item' do
    it 'adds an item to the order_so_far array' do
      subject.add(Item.new('coffee',342))
      expect(subject.return_order_so_far.size).to eq 1
    end

    it 'adds an multiple items to the order_so_far array' do
      num_items = rand(100)
      num_items.times{ subject.add(Item.new('coffee',342)) }
      expect(subject.return_order_so_far.size).to eq num_items
    end
  end
end