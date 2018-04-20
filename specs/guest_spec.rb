require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Mike",100)
    @room_a = Room.new
  end

  def test_guest_name
    result = "Mike"
    answer = @guest1.name
    assert_equal(result,answer)
  end

  def test_guest_wallet
    result = 100
    answer = @guest1.wallet
    assert_equal(result,answer)
  end

  def test_pay_room_fee
    @guest1.pay_room_fee(@room_a.price)
    result = 80
    answer = @guest1.wallet
    assert_equal(result,answer)
  end


  def test_fav_song
    result = "Laaa"
    answer = @guest1.fav_song
    assert_equal(result,answer)
  end

  def test_cheer_loudly
    result = "Whoo!"
    answer = @guest1.cheer_loudly
    assert_equal(result,answer)
  end
end
