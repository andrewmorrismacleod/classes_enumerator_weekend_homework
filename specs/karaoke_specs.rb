require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke')

class TestKaraoke < MiniTest::Test

  def setup

    @song1 = Song.new('Fear of the Dark', 'Iron Maiden', 'I am a man who walks alone')
    @song2 = Song.new('Nothing Else Matters', 'Metallica', 'So close, no matter how far')
    @song3 = Song.new('Ace of Spades', 'Motorhead', "If you like to gamble, I tell you I'm your man")

    @songs = {
    @song1.title => @song1,
    @song2.title => @song2,
    @song3.title => @song3
    }

    @room1 = Room.new(10, @songs)
    @room2 = Room.new(7, @songs)
    @room3 = Room.new(4, @songs)

    @rooms = [@room1, @room2, @room3]

    @guest1 = Guest.new("Steve", 100)
    @guest1 = Guest.new("Sarah", 50)
    @guest1 = Guest.new("John", 10)
    @guest1 = Guest.new("Bruce", 5)
    @guest1 = Guest.new("Lars", 1)

    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5]

    @karaoke = Karaoke.new(@rooms, 200)

  end

  def test_guest_name
    assert_equal('Steve', @guest.name)
  end

  def test_guest_wallet
    assert_equal(100, @guest.wallet)
  end


end
