require 'spec_helper'

describe Item do
  let(:subject) { Item.new('coffee') }
  describe '#name' do
    it 'is instantiated with a name' do
      expect(subject.name).to eq 'coffee'
    end

    it 'raises an error if attempting to change name' do
      expect{ subject.name = 'not coffee' }.to raise_error
    end

    it 'can\'t easily change its name' do
      begin
        subject.name = 'not coffee'      
      rescue
      end
      expect(subject.name).to eq 'coffee'
    end
  end
end