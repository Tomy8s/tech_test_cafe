require 'spec_helper'

describe Order do
  describe '#add_item' do
    it 'adds an item to the order_so_far array' do
      expect(subject.add_item(Item.new('coffee',342)).size).to eq 1
    end

    it 'adds multiple items to the order_so_far array' do
      num_items = rand(100)
      expect(subject.add_item(num_items, Item.new('coffee',342)).size).to eq num_items
    end
  end

  describe '#remove_item' do
    let(:coffe) { Item.new('coffee',342) }
    let(:tea) { Item.new('tea',242) }
    let(:big_order) { subject.add_item(3, coffee); subject.add_item(7, tea) }

    it 'removes an item to the order_so_far array' do
      expect(subject.remove_item(tea).size).to eq 9
    end

    it 'adds multiple items to the order_so_far array' do
      expect(subject.remove_item(5, tea).size).to eq 4
    end
  end
end