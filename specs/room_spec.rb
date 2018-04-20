require('minitest/autorun')
require('minitest/rg')
require_relative('../song')
require_relative('../guest')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new("Laaa")
    @guest1 = Guest.new("Mike")
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
    @room_a.check_in_guest
    result = true
    answer = @room_a.room_in_use
    assert_equal(result,answer)
  end

  def test_check_out_guest
    @room_a.check_out_guest
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




end
