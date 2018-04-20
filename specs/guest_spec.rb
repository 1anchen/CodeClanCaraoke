require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Mike")
  end

  def test_guest_name
    result = "Mike"
    answer = @guest1.name
    assert_equal(result,answer)
  end
  
end
