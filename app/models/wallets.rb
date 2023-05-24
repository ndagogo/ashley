class Wallet
    attr_reader :balance
    
    def initialize
      @balance = 0
    end
    
    def deposit(amount)
      @balance += amount
    end
    
    def withdraw(amount)
      if amount <= @balance
        @balance -= amount
      else
        puts "Insufficient balance."
      end
    end
  end
  
  # Usage example
  wallet = Wallet.new
  
  wallet.deposit(100)
  puts "Balance: #{wallet.balance}" # Output: Balance: 100
  
  wallet.withdraw(50)
  puts "Balance: #{wallet.balance}" # Output: Balance: 50
  
  wallet.withdraw(75) # Output: Insufficient balance.
  puts "Balance: #{wallet.balance}" # Output: Balance: 50
  