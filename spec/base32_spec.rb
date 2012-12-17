require File.dirname(__FILE__) + '/spec_helper'

describe ROTP::Base32 do
  describe '.decode_block' do
    context 'when last char is a pad' do
      let(:block) { 'GU3TONA=' }
      subject { ROTP::Base32.send(:decode_block, block) }

      it 'should not crash' do
        lambda { subject }.should_not raise_error
      end
    end
  end
end