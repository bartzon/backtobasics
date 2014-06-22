class Account
  #belongs_to :owner
  attr_accessor :balance

  def initialize
    @balance = 0
  end

  def withdraw(money)
    @balance -= money.amount
  end

  def deposit(money)
    @balance += money.amount
  end
end
