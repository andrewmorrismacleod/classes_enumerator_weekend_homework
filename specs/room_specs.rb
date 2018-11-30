require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')

class TestRoom < MiniTest::Test

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

  end

  def test_room_has_capacity
    assert_equal(10, @room1.capacity)
  end

  def test_room_has_songs
    assert_equal('I am a man who walks alone', @room1.songs['Fear of the Dark'].lyrics)
  end


end
