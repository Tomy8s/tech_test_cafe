require 'spec_helper'

describe Printer do
  describe'#print' do
    it 'prints the date and time' do
      expect{ subject.class.print }.to output(
        "#{Time.now.strftime('%Y.%m.%d %H:%M:%S')}\n"
        ).to_stdout
    end
  end
end