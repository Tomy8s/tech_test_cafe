require 'spec_helper'

describe Printer do
  let(:till) { Till.new('My Cafe', '5 High St', '123456789', Menu.new) }
  let(:coffee) { Item.new('coffee',342) }
  let(:tea) { Item.new('tea',242) }
  let(:order) { Order.new }

  before do
    order.order_so_far << coffee
    5.times{ order.order_so_far << tea }
  end

  describe'#print' do
    it 'prints the relevant information' do
      expect{ subject.class.print({name: 'My Cafe', address: '5 High St', phone: '123456789'}, order.order_so_far) }.to output(
        "\
#{Time.now.strftime('%Y.%m.%d %H:%M:%S')}
           My Cafe            

          5 High St           
          123456789           

coffee         1 x 3.42 = 3.42
tea           5 x 2.42 = 12.10

                 total   15.52
   of which VAT at 20%    3.10
"
        ).to_stdout
    end
  end
end