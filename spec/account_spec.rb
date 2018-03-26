require 'account'

describe Account do

  # it {is_expected.to respond_to :balance}

  let(:account) { described_class.new} # mock the account so you use 'account' and not subject
  let(:date) {DateTime.now.strftime("%d/%m/%Y")}

  describe '#initialize' do
    it 'initializes balance as 0' do
      expect(account.balance).to eq(0)
    end

    it 'initializes the date as the current date' do
      expect(account.date).to eq(date)
    end
  end

  describe 'depositing money' do
    it 'updates the balance with the deposited money' do
      account.deposit(20)
      expect(account.balance).to eq(20)
    end
  end

end