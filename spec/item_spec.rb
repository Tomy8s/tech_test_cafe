require 'spec_helper'

describe Item do
  let(:subject) { Item.new('coffee', 473.0) }
  describe '#name' do
    it 'is initiated with a name' do
      expect(subject.name).to eq 'coffee'
    end

    it 'raises an error if attempting to change name' do
      expect{ subject.name = 'not coffee' }.to raise_error NoMethodError
    end

    it 'can\'t easily change its name' do
      begin
        subject.name = 'not coffee'      
      rescue
      end
      expect(subject.name).to eq 'coffee'
    end
  end

  describe '#price' do
    it 'is initiated with a price' do
      expect(subject.price).to eq 473
    end

    it 'saves price as an integer' do
      expect(subject.price).to be_kind_of(Fixnum)
    end

    it 'can be changed' do
      expect{ subject.price = 573.0 }.to change(subject.price).to 573
    end
  end
end