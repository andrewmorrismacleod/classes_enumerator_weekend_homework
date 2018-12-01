require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Steve", 100, "Fear of the Dark")
  end

  def test_guest_name
    assert_equal('Steve', @guest.name)
  end

  def test_guest_wallet
    assert_equal(100, @guest.wallet)
  end

  def test_can_pay__true
    assert_equal(true, @guest.can_pay?(3))
  end

  def test_can_pay__false
    assert_equal(false, @guest.can_pay?(103))
  end

  def test_payment
    assert_equal(97, @guest.pay(3))
  end

  def test_favourite_song
    assert_equal("Hooray - Fear of the Dark!!", @guest.cheer_favourite_song)
  end


end
