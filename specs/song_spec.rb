require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Laaa")
  end

  def test_guest_name
    result = "Laaa"
    answer = @song1.name
    assert_equal(result,answer)
  end

end
