# README
Problem:
A hotel has rooms in the following category.

20 - Deluxe Rooms - Queen Size Bed   ($100/night)
      Rooms: (A 01 - 05)  B( 01 - 05)  C(01 - 05)  D(01 -05)
20 - Luxury Rooms - Queen Size Bed and Pool Facing ($ 150/night)
      Rooms: A(06 - 10) B(06 -10) C(06 - 10) D (06 - 10)
12 - Luxury Suites - King Size Bed and Pool Facing ($175/night)
       Rooms: D (11 - 20)  E (01 - 02)
8 - Presidential Suites - King Size Bed, Pool Facing with a Gym ($200/night)
    E (03 - 10)

The hotel allows booking up to 6 months in advance for room reservations and needs an easy way for the user to book a room if a particular category of room is available for a given date range.

write an API that shows the availability of the room bypassing booking date and or room type.
Second, if the user is registered he can see his booked room and booking information

Solution:

1. http://localhost:3000/bookings/new

Through this Url user can book their rooms reservation by passing the checkin date, checkout date, room type and no of guests

This will check the rooms available for the given dates and types

2. http://localhost:3000/api/v1/rooms?checkin_date=2020-11-10&checkout_date=2020-11-12&room_type=2

This api will list all the available rooms for the given dates and given type of room

3. http://localhost:3000/api/v1/users/1/bookings

This api will list all the booking info, room info for the user

