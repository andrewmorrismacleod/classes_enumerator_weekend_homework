require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Steve", 100)
  end

  def test_guest_name
    assert_equal('Steve', @guest.name)
  end

  def test_guest_wallet
    assert_equal(100, @guest.wallet)
  end


end
