require 'spec_helper'

describe Printer do
  let(:till) { Till.new('My Cafe', '5 High St', '123456789', Menu.new) }
  describe'#print' do
    it 'prints the date and time' do
      expect{ subject.class.print(name: 'My Cafe', address: '5 High St', phone: '123456789') }.to output(
        "\
#{Time.now.strftime('%Y.%m.%d %H:%M:%S')}
My Cafe
5 High St
123456789
"
        ).to_stdout
    end
  end
end