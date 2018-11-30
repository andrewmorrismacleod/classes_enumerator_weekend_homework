class Room

  attr_reader :capacity, :songs

  def initialize(capacity, songs)
    @capacity = capacity
    @songs = songs
  end

end
