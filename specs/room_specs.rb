require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

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

    @guest1 = Guest.new("Steve", 100, 'Fear of the Dark')
    @guest2 = Guest.new("Sarah", 50, 'Nothing Else Matters')
    @guest3 = Guest.new("John", 10, 'Ace of Spades')
    @guest4 = Guest.new("Bruce", 5, 'The Devil Went Down to Georgia')
    @guest5 = Guest.new("Lars", 1, 'Sweet Caroline')

    @guests = [@guest1, @guest2, @guest3, @guest4, @guest5]

    @room1 = Room.new(10, @songs)
    @room2 = Room.new(4, @songs)


  end

  def test_room_has_capacity
    assert_equal(10, @room1.capacity)
  end

  def test_room_has_songs__check_lyrics
    assert_equal('I am a man who walks alone', @room1.songs['Fear of the Dark'].lyrics)
  end

  def test_room_add_guests__check_guest_2
    @room1.add_guests(@guests)
    assert_equal("Sarah", @room1.guests[1].name)
  end

  def test_room_remove_guests__check_guests_array
    @room1.add_guests(@guests)
    @room1.remove_guests
    assert_equal([], @room1.guests)
  end

  def test_check_room_capacity__true
    assert_equal(true, @room1.can_take_guests?(@guests))
  end

  def test_check_room_capacity__false
    assert_equal(false, @room2.can_take_guests?(@guests))
  end

  def test_check_room_add_guests__false
    @room2.add_guests(@guests)
    assert_equal(4,@room2.available_space )
  end

  def test_pay_room()
    @room1.add_guests(@guests)
    @room1.pay_for_room(1)
    assert_equal(5, @room1.bar_tab)
  end

end
