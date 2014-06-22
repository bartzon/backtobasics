class AccountEntry
  def deposit(money, date, account)
    account.add_entry(money, date)
    logger.write_Log(money, date, account)
  end

  def withdraw(money, date, account)
    account.add_entry(money, date)
    logger.write_log(money, date, account)
  end
end

class AccountLogger
  def write_Log(money, date, account)
    # ...
    #
    # ...
  end
end
