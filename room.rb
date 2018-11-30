class Room

  attr_reader :capacity, :songs, :guests

  def initialize(capacity, songs)
    @capacity = capacity
    @songs = songs
    @guests = []
    @available_space = capacity
  end

  def add_guests(guests)
    @guests = guests
    @available_space = @capacity - @guests.length
  end

  def remove_guests()
    @guests = []
    @available_space = @capacity
  end

  def can_take_guests?(guests)
    return @available_space >= guests.length
  end


end
