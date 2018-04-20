class Guest

  attr_reader :name
  attr_accessor :wallet

  def initialize(name,wallet)
    @name = name
    @id = 001
    @wallet = wallet
  end

  def pay_room_fee(fee)
    @wallet -= fee
  end


end
