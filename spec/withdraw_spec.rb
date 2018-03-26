require 'withdraw'

describe Withdraw do

  let(:withdraw) { described_class.new}

  it {is_expected.to respond_to :withdraw}

end