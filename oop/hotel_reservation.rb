# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
hotel_reservation = HotelReservation.new(room_number: 45)
puts "Let's change the room number to #{hotel_reservation.room_number}"

# The add_a_fridge method
hotel_reservation.add_a_fridge
p hotel_reservation.amenities

# The add_a_crib method
hotel_reservation.add_a_crib
p hotel_reservation.amenities

# The add_a_custom_amenity method
hotel_reservation.add_a_custom_amenity("bathtub")
p hotel_reservation.amenities

