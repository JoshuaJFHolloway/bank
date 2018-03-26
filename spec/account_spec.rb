require 'account'

describe Account do

  # it {is_expected.to respond_to :balance}

  let(:account) { described_class.new} # mock the account so you use 'account' and not subject

  describe '#initialize' do
    it 'initializes balance as 0' do
      expect(account.balance).to eq(0)
    end
  end

end