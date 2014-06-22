require 'rails_helper'

describe Account do
  it 'should have a balance of 0' do
    account = Account.new
    account.balance.should == 0
  end

  it 'should have a balance of 20 when I deposit 20' do
    account = Account.new
    account.deposit(20)
    account.balance.should == 20
  end

  it 'should have a balance of 20 when I deposit 50 and
  I withdraw 30' do
    account = Account.new
    account.deposit(50)
    account.withdraw(30)
    account.balance.should == 20
   end

  it 'should raise an error if I withdraw too much' do
    account = Account.new
    account.deposit(100)

    begin
      account.withdraw(100_000)
    rescue => e
    end

    e.should be_a(InsufficientBalanceError)
  end
end

