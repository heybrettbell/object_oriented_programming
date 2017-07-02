class BankAccount

  def initialize(balance)
    @balance = balance
    @interest_rate = 1.5
  end

  def deposit(amount)
    @balance += amount
    puts "Your balance is now: #{@balance}."
  end

  def withdraw(amount)
    @balance -= amount
    puts "Your balance is now: #{@balance}."
  end

  def gain_interest
    with_interest = @balance * @interest_rate
    puts "Your balance with interest is: #{with_interest}."
  end
git a
end

my_account = BankAccount.new(100)
my_account.deposit(200)
my_account.withdraw(15)
my_account.gain_interest
