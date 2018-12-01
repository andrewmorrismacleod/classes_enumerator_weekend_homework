class Guest

  attr_reader :name, :wallet, :favourite_song

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end

  def can_pay?(amount)
    return amount <= @wallet
  end

  def pay(amount)
    if can_pay?(amount)
      @wallet -= amount
    end
  end

  def cheer_song(song)
    if song.title == favourite_song
      return "Hooray - #{favourite_song}!!"
    else
      return "OK, I'll sing this, but it is no #{favourite_song}"
    end
  end

end
