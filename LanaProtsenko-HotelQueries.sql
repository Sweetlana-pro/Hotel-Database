USE HotelDB;

-- 1. Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room number(s), and the reservation dates
SELECT 
    g.FirstName,
    g.LastName,
    r.RoomNo,
    re.StartDate,
    re.EndDate
FROM Reservation re 
INNER JOIN Guests g ON re.CustomerId = g.CustomerId
INNER JOIN Room r ON re.RoomId = r.RoomId
WHERE re.EndDate <= '2023-07-31';
-- Result: 17 rows returned
FirstName,LastName,RoomNo,StartDate,EndDate
Lana,Protsenko,307,2023-03-17,2023-03-20
Lana,Protsenko,205,2023-06-28,2023-07-02
Mack,Simmer,308,2023-02-02,2023-02-04
Bettyann,Seery,203,2023-02-05,2023-02-10
Bettyann,Seery,303,2023-07-28,2023-07-29
Duane,Cullison,305,2023-02-22,2023-02-24
Karie,Yang,201,2023-03-06,2023-03-07
Aurore,Lipton,302,2023-03-18,2023-03-23
Aurore,Lipton,304,2023-06-17,2023-06-18
Zachery,Luechtefeld,202,2023-03-29,2023-03-31
Walter,Holaway,301,2023-04-09,2023-04-13
Walter,Holaway,204,2023-07-13,2023-07-14
Wilfred,Vise,207,2023-04-23,2023-04-24
Wilfred,Vise,401,2023-07-18,2023-07-21
Maritza,Tilton,401,2023-05-30,2023-06-02
Joleen,Tison,206,2023-06-10,2023-06-14
Joleen,Tison,208,2023-06-10,2023-06-14
============================================================================================================
-- 2. Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
SELECT 
    r.RoomNo,
    g.FirstName,
    g.LastName,    
    re.StartDate,
    re.EndDate
FROM Reservation re 
INNER JOIN Guests g ON re.CustomerId = g.CustomerId
INNER JOIN Room r ON re.RoomId = r.RoomId
INNER JOIN RoomAmenities ra ON r.RoomId = ra.RoomId
INNER JOIN Amenities a ON a.AmenitiesId = ra.AmenitiesId
WHERE a.AmenitiesId = 1;
-- Result: 10 rows
RoomNo,FirstName,LastName,StartDate,EndDate
201,Karie,Yang,2023-03-06,2023-03-07
203,Bettyann,Seery,2023-02-05,2023-02-10
205,Lana,Protsenko,2023-06-28,2023-07-02
207,Wilfred,Vise,2023-04-23,2023-04-24
301,Walter,Holaway,2023-04-09,2023-04-13
301,Mack,Simmer,2023-11-22,2023-11-25
303,Bettyann,Seery,2023-07-28,2023-07-29
305,Duane,Cullison,2023-02-22,2023-02-24
305,Bettyann,Seery,2023-08-30,2023-09-01
307,Lana,Protsenko,2023-03-17,2023-03-20
======================================================================================================

-- 3. Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)
SELECT 
    g.FirstName,
    g.LastName, 
    r.RoomNo,
    re.StartDate,    
    re.Adults + re.Children AS TotalPersons
FROM Reservation re 
INNER JOIN Room r ON re.RoomId = r.RoomId
INNER JOIN Guests g ON re.CustomerId = g.CustomerId
WHERE re.CustomerId = 3;
-- Result: 3 rows returned
FirstName,LastName,RoomNo,StartDate,TotalPersons
Bettyann,Seery,203,2023-02-05,3
Bettyann,Seery,303,2023-07-28,3
Bettyann,Seery,305,2023-08-30,1
==========================================================================================================

-- 4. Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room.
SELECT 
    r.RoomNo,
    re.ReservationId,    
    re.TotalRoomCost
FROM Reservation re 
RIGHT OUTER JOIN Room r ON re.RoomId = r.RoomId;
-- Result:
RoomNo,ReservationId,TotalRoomCost
201,4,199.99
202,7,349.98
203,2,999.95
203,23,399.98
204,16,184.99
205,15,699.96
206,12,599.96
206,20,449.97
207,10,174.99
208,13,599.96
301,9,799.96
301,21,599.97
302,6,924.95
302,22,699.96
303,18,199.99
304,14,184.99
305,3,349.98
305,19,349.98
306,NULL,NULL
307,5,524.97
308,1,299.98
401,11,1199.97
401,17,1259.97
402,NULL,NULL
=============================================================================================
-- 5. Write a query that returns all the rooms accommodating at least three guests and that are reserved on any date in April 2023.
SELECT 
    r.RoomNo,
    re.StartDate,
    re.EndDate,
    rt.MaxOccupacy
FROM Reservation re 
INNER JOIN Room r ON re.RoomId = r.RoomId
INNER JOIN RoomRoomType rrt ON r.RoomId = rrt.RoomId
INNER JOIN RoomType rt ON rrt.RoomTypeId = rt.RoomTypeId
WHERE MaxOccupacy >= 3 AND re.EndDate BETWEEN '2023-04-01' AND '2023-04-30' AND re.StartDate BETWEEN '2023-04-01' AND '2023-04-30';
-- Result:
RoomNo,StartDate,EndDate,MaxOccupacy
301,2023-04-09,2023-04-13,4
================================================================================================
-- 6. Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.
SELECT 
    g.FirstName,
    g.LastName,
    COUNT(re.ReservationId) NumberOfReservations    
FROM Reservation re 
INNER JOIN Guests g ON re.CustomerId = g.CustomerId
GROUP BY re.CustomerId
ORDER BY COUNT(re.ReservationId) DESC, g.LastName;
-- Result:
FirstName,LastName,NumberOfReservations
Bettyann,Seery,3
Mack,Simmer,3
Walter,Holaway,2
Aurore,Lipton,2
Lana,Protsenko,2
Maritza,Tilton,2
Joleen,Tison,2
Wilfred,Vise,2
Karie,Yang,2
Duane,Cullison,1
Zachery,Luechtefeld,1
==================================================================================================
-- 7. Write a query that displays the name, address, and phone number of a guest based on their phone number. (Choose a phone number from the existing data.)
SELECT
    FirstName,
    LastName,
    Address,
    Phone
FROM Guests 
WHERE phone = '(446) 396-6785';
-- Result:
FirstName,LastName,Address,Phone
Walter,Holaway,"7556 Arrowhead St.","(446) 396-6785"
======================================================================================================
