class Room

  attr_reader :capacity, :songs, :guests, :available_space, :bar_tab

  def initialize(capacity, songs)
    @capacity = capacity
    @songs = songs
    @guests = []
    @available_space = capacity
    @bar_tab = 0
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

  #Affordability has already been checked at this point
  #This method simply adds the money to the bar tab associated with the room
  def pay_for_room(costpp)
    @guests.each do |guest|
      @bar_tab += costpp
      guest.pay(costpp)
    end
  end


end
