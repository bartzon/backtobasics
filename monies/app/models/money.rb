class Money
  attr_accessor :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def add(amount, other_amount)
    result = amount * 1.23 + other_amount
    return Money.new(result, 'euros')
  end

  def subtract(amount, other_amount)
    result = amount * 1.23 - other_amount
    return Money.new(result, 'euros')
  end

  def ==(other)
    @amount == other.amount and @currency == other.currency
  end
end
