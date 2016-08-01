class BankAccount

  attr_reader :name
  attr_accessor :balance, :status

  # i dont' completely understand why the following didn't work

  #def name
  #@name
  #end 

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance += amount
  end

  def close_account
    @status = "closed"
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    @status == "open" && (@balance > 0)
  end

end
