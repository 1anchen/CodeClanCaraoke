require('minitest/autorun')
require('minitest/rg')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new("Laaa")
    @guest1 = Guest.new("Mike",100)
    @room_a = Room.new("Alpha")
  end

  def test_guest_name
    result = "Alpha"
    answer = @room_a.name
    assert_equal(result,answer)
  end

  def test_is_room_in_use
    result = false
    answer = @room_a.room_in_use
    assert_equal(result,answer)
  end

  def test_check_in_guest
    @room_a.check_in_guest(@guest1.name)
    result = true
    answer = @room_a.room_in_use
    assert_equal(result,answer)
  end

  def test_check_in_guest__name
    @room_a.check_in_guest(@guest1.name)
    result = "Mike"
    answer = @room_a.current_user
    assert_equal(result,answer)
  end

  def test_check_out_guest
    @room_a.check_out_guest(@guest1.name)
    result = false
    answer = @room_a.room_in_use
    assert_equal(result,answer)
  end

  def test_add_song_to_a_room
    @room_a.add_song(@song1.name)
    result = ["Laaa"]
    answer = @room_a.songs_list
    assert_equal(result,answer)
  end

  def test_waiting_list_empty
    result = []
    answer = @room_a.waiting_list
    assert_equal(result,answer)
  end

   def test_enter_guest_to_waiting_list
     @room_a.check_in_guest(@guest1.name)
     @room_a.enter_guest_to_waiting_list(@guest1.name)
     result = 1
     answer = @room_a.waiting_list.length
     assert_equal(result,answer)
   end

   def test_room_price
     result = 20
     answer = @room_a.price
     assert_equal(result,answer)
   end
end
