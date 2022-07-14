USE HotelDB;

insert into states (code,name) values ('AL','Alabama');
insert into states (code,name) values ('AK','Alaska');
insert into states (code,name) values ('AS','American Samoa');
insert into states (code,name) values ('AZ','Arizona');
insert into states (code,name) values ('AR','Arkansas');
insert into states (code,name) values ('CA','California');
insert into states (code,name) values ('CO','Colorado');
insert into states (code,name) values ('CT','Connecticut');
insert into states (code,name) values ('DE','Delaware');
insert into states (code,name) values ('DC','District of Columbia');
insert into states (code,name) values ('FM','Federated States of Micronesia');
insert into states (code,name) values ('FL','Florida');
insert into states (code,name) values ('GA','Georgia');
insert into states (code,name) values ('GU','Guam');
insert into states (code,name) values ('HI','Hawaii');
insert into states (code,name) values ('ID','Idaho');
insert into states (code,name) values ('IL','Illinois');
insert into states (code,name) values ('IN','Indiana');
insert into states (code,name) values ('IA','Iowa');
insert into states (code,name) values ('KS','Kansas');
insert into states (code,name) values ('KY','Kentucky');
insert into states (code,name) values ('LA','Louisiana');
insert into states (code,name) values ('ME','Maine');
insert into states (code,name) values ('MH','Marshall Islands');
insert into states (code,name) values ('MD','Maryland');
insert into states (code,name) values ('MA','Massachusetts');
insert into states (code,name) values ('MI','Michigan');
insert into states (code,name) values ('MN','Minnesota');
insert into states (code,name) values ('MS','Mississippi');
insert into states (code,name) values ('MO','Missouri');
insert into states (code,name) values ('MT','Montana');
insert into states (code,name) values ('NE','Nebraska');
insert into states (code,name) values ('NV','Nevada');
insert into states (code,name) values ('NH','New Hampshire');
insert into states (code,name) values ('NJ','New Jersey');
insert into states (code,name) values ('NM','New Mexico');
insert into states (code,name) values ('NY','New York');
insert into states (code,name) values ('NC','North Carolina');
insert into states (code,name) values ('ND','North Dakota');
insert into states (code,name) values ('MP','Northern Mariana Islands');
insert into states (code,name) values ('OH','Ohio');
insert into states (code,name) values ('OK','Oklahoma');
insert into states (code,name) values ('OR','Oregon');
insert into states (code,name) values ('PW','Palau');
insert into states (code,name) values ('PA','Pennsylvania');
insert into states (code,name) values ('PR','Puerto Rico');
insert into states (code,name) values ('RI','Rhode Island');
insert into states (code,name) values ('SC','South Carolina');
insert into states (code,name) values ('SD','South Dakota');
insert into states (code,name) values ('TN','Tennessee');
insert into states (code,name) values ('TX','Texas');
insert into states (code,name) values ('UT','Utah');
insert into states (code,name) values ('VT','Vermont');
insert into states (code,name) values ('VI','Virgin Islands');
insert into states (code,name) values ('VA','Virginia');
insert into states (code,name) values ('WA','Washington');
insert into states (code,name) values ('WV','West Virginia');
insert into states (code,name) values ('WI','Wisconsin');
insert into states (code,name) values ('WY','Wyoming');

INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES ('Mack', 'Simmer', 19, '379 Old Shore Street','Council Bluffs','51501', '(291) 553-0508'),
('Bettyann', 'Seery', 2, '750 Wintergreen Dr.', 'Wasilla', '99654', '(478) 277-9632');
INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES ('Duane', 'Cullison', 51, '9662 Foxrun Lane', 'Harlingen', '78552', '(308) 494-0198');
INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES ('Karie', 'Yang', 35, '9378 W. Augusta Ave', 'West Deptford', '08096', '(214) 730-0298');
INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES ('Aurore', 'Lipton', 27, '762 Wild Rose Street', 'Saginaw', '48601', '(377) 507-0974');
INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES('Zachery', 'Luechtefeld', 7, '7 Poplar Dr.', 'Arvada', '80003', '(814) 485-2615');
INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES('Jeremiah', 'Pendergrass', 17, '70 Oakwood St.', 'Zion', '60099', '(279) 491-0960');
INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES('Walter', 'Holaway', 47, '7556 Arrowhead St.', 'Cumberland', '02864', '(446) 396-6785');
INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES('Wilfred', 'Vise', 37, '77 West Surrey Street', 'Oswego', '13126', '(834) 727-1001');
INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES('Maritza', 'Tilton', 55, '939 Linda Rd.', 'Burke', '22015', '(446) 351-6860');
INSERT INTO Guests (FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES('Joleen', 'Tison', 45, '87 Queen St.', 'Drexel Hill', '19026', '(231) 893-2755');

DELETE FROM Guests
WHERE CustomerId = 1;

INSERT INTO Amenities (AmenityName, Price) VALUES
('Jacuzzi', 25.0),
('Microwave', 0.0),
('Refrigerator', 0.0),
('Oven', 0.0);

INSERT INTO Room (RoomNo, ADAAccessible) VALUES
(201, 0),
(202, 1),
(203, 0),
(204, 1),
(205, 0),
(206, 1),
(207, 0),
(208, 1),
(301, 0),
(302, 1),
(303, 0),
(304, 1),
(305, 0),
(306, 1),
(307, 0),
(308, 1),
(401, 1),
(402, 1);

INSERT INTO RoomAmenities (RoomId, AmenitiesId) VALUES 
(1, 2),
(1, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 3),
(5, 2),
(5, 3),
(5, 1);
INSERT INTO RoomAmenities (RoomId, AmenitiesId) VALUES 
(6, 2),
(6, 3),
(7, 2),
(7, 3),
(7, 1),
(8, 2),
(8, 3),
(9, 2),
(9, 1),
(10, 3),
(11, 1),
(11, 2),
(12, 3),
(13, 2),
(13, 3),
(13, 1),
(14, 2),
(14, 3),
(15, 2),
(15, 3),
(15, 1),
(16, 2),
(16, 3),
(17, 2),
(17, 3),
(17, 4),
(18, 2),
(18, 3),
(18, 4);

INSERT INTO RoomType (TypeName, StandardOccupacy, MaxOccupacy, BasePrice, ExtraPersonPrice) VALUES
('Single', 2, 2, 149.99, NULL),
('Double', 2, 4, 174.99, 10.00),
('Suite', 3, 8, 399.99, 20.00);

INSERT INTO RoomRoomType (RoomId, RoomTypeId) VALUES 
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 3),
(18, 3);

INSERT INTO Guests (CustomerId, FirstName, LastName, StateId, Address, City, ZIP, Phone) VALUES (1, 'Lana', 'Protsenko', 20, '567 Shownee Slope Street','Calgary','56505', '(587) 575-0508');

DELETE FROM Guests
WHERE CustomerId = 13;

INSERT INTO Reservation (CustomerId, RoomId, Adults, Children, StartDate, EndDate, TotalRoomCost) VALUES
(2, 16, 1, 0, '2023-02-02', '2023-02-04', 299.98),
(3, 3, 2, 1, '2023-02-05', '2023-02-10', 999.95),
(4, 13, 2, 0, '2023-02-22', '2023-02-24', 349.98),
(5, 1, 2, 2, '2023-03-06', '2023-03-07', 199.99),
(1, 15, 1, 1, '2023-03-17', '2023-03-20', 524.97),
(6, 10, 3, 0, '2023-03-18', '2023-03-23', 924.95),
(7, 2, 2, 2, '2023-03-29', '2023-03-31', 349.98),
(8, 12, 2, 0, '2023-03-31', '2023-04-05', 874.95),
(9, 9, 1, 0, '2023-04-09', '2023-04-13', 799.96),
(10, 7, 1, 1, '2023-04-23', '2023-04-24', 174.99),
(11, 17, 2, 4, '2023-05-30', '2023-06-02', 1199.97),
(12, 6, 1, 0, '2023-06-10', '2023-06-14', 599.96),
(12, 8, 1, 0, '2023-06-10', '2023-06-14', 599.96),
(6, 12, 3, 0, '2023-06-17', '2023-06-18', 184.99),
(1, 5, 2, 0, '2023-06-28', '2023-07-02', 699.96),
(9, 4, 3, 1, '2023-07-13', '2023-07-14', 184.99),
(10, 17, 4, 2, '2023-07-18', '2023-07-21', 1259.97),
(3, 11, 2, 1, '2023-07-28', '2023-07-29', 199.99),
(3, 13, 1, 0, '2023-08-30', '2023-09-01', 349.98),
(2, 6, 2, 0, '2023-11-22', '2023-11-25', 449.97),
(2, 9, 2, 2, '2023-11-22', '2023-11-25', 599.97),
(11, 10, 2, 0, '2023-12-24', '2023-12-28', 699.96);

-- Deleting Jeremiah Pendergrass and his reservations from the database
    SET SQL_SAFE_UPDATES = 0;
        -- First, delete Jeremiah Pendergrass from Reservation Table since it references Guests
            DELETE FROM Reservation
            WHERE CustomerId = 8;
        -- Next, delete him from Guests
           DELETE FROM Guests
           WHERE CustomerId = 8;
    SET SQL_SAFE_UPDATES = 1;