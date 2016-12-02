require 'spec_helper'

describe Menu do
  describe '#add_item' do
    it 'adds items to the #items array' do
      expect(subject.add_item('coffee', 123).size).to eq 1
    end

    it 'raises and error if an item that name already exists' do
      subject.add_item('coffee', 123)
      expect{ subject.add_item('coffee', 123) }.to raise_error ArgumentError
    end

    it 'doesn\'t add an item it an item with that name already exists' do
      subject.add_item('coffee', 123)
      begin
        subject.add_item('coffee', 123)
      rescue
      end
      expect(subject.return_items.size).to eq 1
    end
  end
end