require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    # #     if valid? && @status == "pending"
          # if @sender.balance < @amount
    #     @sender.balance -= @amount
    #     @receiver.balance += @amount
    #     @status = "complete"
    # else
    #    @status = "rejected"
    #     "Transaction rejected. Please check your account balance."
    # end
    # elsif
    #   @status == "complete"
    # else

    # end
    if valid? && status == "pending"
      if amount < self.sender.balance
        self.sender.balance -= amount
        self.receiver.balance += amount
        self.status = "complete"
      else
         self.status = "rejected"
         "Transaction rejected. Please check your account balance."
      end
    else
       self.status = "rejected"
       "Transaction rejected. Please check your account balance."
    end


    # binding.pry
  end
end
