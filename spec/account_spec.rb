require 'account'

describe Account do

  # it {is_expected.to respond_to :balance}

  let(:account) { described_class.new } # mock the account so you use 'account' and not subject
  let(:date) { DateTime.now.strftime("%d/%m/%Y") }
  let(:calculator) { Calculator.new }
  let(:statement_format) { "date || credit || debit || balance" }

  describe '#initialize' do
    it 'initializes balance as 0' do
      expect(account.balance).to eq(0)
    end

    it 'initializes the date as the current date' do
      expect(account.date).to eq(date)
    end

    # it 'stubs class methods on real objects' do
    #   fixed = DateTime.now.strftime("%d/%m/%Y")
    #   allow(DateTime.now.strftime("%d/%m/%Y")).to receive(:now).and_return(fixed)
    #   expect(DateTime.now.strftime("%d/%m/%Y")).to eq(fixed)
    #   expect(DateTime.now.strftime).to eq(2010)
    # end

    it 'initalizes an empty array' do
      expect(account.statement).to eq([[statement_format]])
    end
  end

  describe 'depositing money' do
    it 'updates the balance with the deposited money' do
      account.deposit(20)
      expect(account.balance).to eq(20)
    end
  end

  describe 'withdraw money' do
    it 'deducts an inputted amount from the balance' do
      account.deposit(30)
      account.withdraw(20)
      expect(account.balance).to eq(10)
    end
  end

  describe 'print statement' do
    context 'depositing' do
      it 'prints out the statement with full detail (date, credit, debit, balance)' do
        account.deposit(30)
        expect(account.print_statement).to eq [[statement_format], ["#{date}, '', 30, 30"]]
      end
    end

    context 'withdrawing' do
      it 'prints out the statement with full detail (date, credit, debit, balance)' do
        account.withdraw(20)
        expect(account.print_statement).to eq [[statement_format], ["#{date}, 20, '', -20"]]
      end
    end
    context 'depositing then withdrawing' do
      it 'prints out two statements with full detail (date, credit, debit, balance)' do
        account.deposit(50)
        account.withdraw(20)
        expect(account.print_statement).to eq [[statement_format], ["#{date}, '', 50, 50"], ["#{date}, 20, '', 30"]]
      end
    end
  end
end