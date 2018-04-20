require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')

class TestBar < MiniTest::Test

  def setup
    @bar = Bar.new
  end

  def test_bar_name
    result = "Alpha_Bar"
    answer = @bar.name
    assert_equal(result,answer)
  end

  def test_bear_price
    result = 5
    answer = @bar.drinks[0][:price]
    assert_equal(result,answer)
  end

end
