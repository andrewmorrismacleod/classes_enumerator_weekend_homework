require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

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
    @guest2 = Guest.new("Sarah", 50)
    @guest3 = Guest.new("John", 10)
    @guest4 = Guest.new("Bruce", 5)
    @guest5 = Guest.new("Lars", 1)

    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5]

    @karaoke = Karaoke.new(@rooms, 200)

  end

  def test_karaoke_rooms__room2_capacity
    assert_equal(7, @karaoke.rooms[1].capacity)
  end

  def test_karaoke_rooms__room3_song2_artist
    assert_equal('Metallica', @karaoke.rooms[2].songs['Nothing Else Matters'].artist)
  end

  def test_karaoke_till
    assert_equal(200, @karaoke.till)
  end




end
