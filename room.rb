class Room

  attr_reader :capacity, :songs, :guests

  def initialize(capacity, songs)
    @capacity = capacity
    @songs = songs
    @guests = []
  end

  def add_guests(guests)
    @guests = guests
  end

  def remove_guests()
    @guests = []
  end


end
