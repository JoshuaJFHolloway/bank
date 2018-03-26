require 'calculator'

describe Calculator do

  let(:calculator) { described_class.new}

  it {is_expected.to respond_to :withdraw}

  describe 'withdraw' do
    it 'deducts the balance by the passed in amount' do
      expect(withdraw)
    end
  end



end