class Account
  attr_reader :name, :balance
  
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == @pin ? "Balance: $#{@balance}" : pin_error #if pin_number is correct, outputs balance, otherwise returns error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == @pin
      if amount > @balance
        puts "You do not have that much money in your account"
      else
      	@balance -= amount
     	 puts "Withdrew #{amount}. New balance: $#{@balance}."
      end
    else
      puts pin_error
    end
  end
  
  def deposit(pin_number, amount)
  	if pin_number == @pin
      @balance += amount
      puts "Deposited #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("Kris", 10_000) #creates a new account under the name Kris with a balance of 10,000