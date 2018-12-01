class Guest

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def can_pay?(amount)
    return amount <= @wallet
  end

  def pay(amount)
    if can_pay?(amount)
      @wallet -= amount
    end
  end


end
