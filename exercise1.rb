class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    new_amount = amount + @balance
    puts "Your balance is now: #{new_amount}."
  end

end

my_account = BankAccount.new(100,5)
my_account.deposit(20)
