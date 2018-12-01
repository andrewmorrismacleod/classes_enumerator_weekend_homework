class Karaoke

  attr_reader :rooms, :till, :guests, :costpp

  def initialize(rooms, till, costpp)
    @rooms = rooms
    @till = till
    @guests = []
    @costpp = costpp
  end

  def assign_guests_to_first_available_room(guests)

    available_room = @rooms.find { |room| room.can_take_guests?(guests)}

    if available_room != nil
      available_room.add_guests(guests)
      @guests = guests
    end

  end

  def all_guests_can_afford_entry?(guests)
    return !guests.any?{ |guest| !guest.can_pay?(@costpp)}
  end

end
