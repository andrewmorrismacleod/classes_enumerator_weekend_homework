class Karaoke

  attr_reader :rooms, :till, :guests

  def initialize(rooms, till)
    @rooms = rooms
    @till = till
    @guests = []
  end

  def assign_guests_to_first_available_room(guests)

    available_room = @rooms.find { |room| room.can_take_guests?(guests)}.add_guests(guests)

    if available_room != nil
      @guests = guests
    end

  end

end
