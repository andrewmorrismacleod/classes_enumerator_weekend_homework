class Room

  attr_reader :capacity, :songs, :guests, :available_space

  def initialize(capacity, songs)
    @capacity = capacity
    @songs = songs
    @guests = []
    @available_space = capacity
  end

  def add_guests(guests)

    @available_space = @capacity - @guests.length

    if can_take_guests?(guests)
      @guests = guests
    end

  end

  def remove_guests()
    @guests = []
    @available_space = @capacity
  end

  def can_take_guests?(guests)
    return @available_space >= guests.length
  end


end
