class Guest

  attr_reader :name, :fav_song
  attr_accessor :wallet

  def initialize(name,wallet)
    @name = name
    @id = 001
    @wallet = wallet
    @fav_song = "Laaa"
  end

  def pay_room_fee(fee)
    @wallet -= fee
  end

  def cheer_loudly
    p "Whoo!"
  end


end
