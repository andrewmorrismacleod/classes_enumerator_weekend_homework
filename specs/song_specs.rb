require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Fear of the Dark", "Iron Maiden")
  end

  def test_song_has_title
    assert_equal('Fear of the Dark', @song1.title)
  end

  def test_song_has_artist
    assert_equal('Iron Maiden', @song1.artist)
  end


end
