require('minitest/autorun')
require('minitest/rg')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new("Leee")
    @guest1 = Guest.new("Mike",100)
    @room_a = Room.new
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
    result = ["Laaa", "Looo", "Luuu", "Leee"]
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

   def test_when_guest_find_fav_song__turedef
     if @room_a.guest_find_fav_song(@guest1.fav_song) == true
       @guest1.cheer_loudly
     else
       return
       false
     end
     result = "Whoo!"
     answer = @guest1.cheer_loudly
     assert_equal(result,answer)
   end

   def test_total_spend
     result = 0
     answer = @room_a.total_spend
     assert_equal(result,answer)
   end

   def test_time_to_pay
     result = 0
     answer = @room_a.hour_in_use
     assert_equal(result,answer)
   end

   def test_hour_in_use_3_hours
     @room_a.calculate_hour_in_use(3)
     result = 60
     answer = @room_a.total_spend
     assert_equal(result,answer)
   end
end
