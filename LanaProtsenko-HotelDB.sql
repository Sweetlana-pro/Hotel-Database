DROP DATABASE IF EXISTS HotelDB;
CREATE DATABASE HotelDB;
USE HotelDB;

CREATE TABLE States (
StateId INT PRIMARY KEY AUTO_INCREMENT,
Code VARCHAR(2) NOT NULL DEFAULT ' ',
Name CHAR(50) NOT NULL DEFAULT ' ');


CREATE TABLE Guests (
CustomerId INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(25) NOT NULL,
LastName VARCHAR(50) NOT NULL,
StateId INT NOT NULL,
Address VARCHAR(100),
City VARCHAR(20),
ZIP CHAR(5),
Phone CHAR(14) NOT NULL,
FOREIGN KEY fk_Guests_States (StateId)
        REFERENCES States (StateId)
);


CREATE TABLE Amenities (
AmenitiesId INT PRIMARY KEY AUTO_INCREMENT,
AmenityName VARCHAR(12) NOT NULL,
Price DECIMAL
);

CREATE TABLE Room (
RoomId INT PRIMARY KEY AUTO_INCREMENT, 
RoomNo CHAR(3) NOT NUll,
ADAAccessible BOOL NOT NULL);


CREATE TABLE RoomAmenities (
RoomId INT NOT NULL,
AmenitiesId INT NOT NULL,
PRIMARY KEY pk_RoomAmenities(RoomId, AmenitiesId),
CONSTRAINT fk_RoomAmenities_Room
    FOREIGN KEY fk_RoomAmenities_Room(RoomId)
    REFERENCES Room(RoomId),
CONSTRAINT fk_RoomAmenities_Amenities
    FOREIGN KEY fk_RoomAmenities(AmenitiesId)
    REFERENCES Amenities(AmenitiesId)
);


CREATE TABLE RoomType (
RoomTypeId INT PRIMARY KEY AUTO_INCREMENT,
TypeName VARCHAR(6) NOT NULL,
StandardOccupacy INT NOT NULL,
MaxOccupacy INT NOT NULL,
BasePrice DECIMAL(5,2) NOT NULL, 
ExtraPersonPrice DECIMAL
);


CREATE TABLE RoomRoomType (
RoomId INT NOT NULL,
RoomTypeId INT NOT NULL,
PRIMARY KEY pk_RoomRoomType(RoomId, RoomTypeId),
CONSTRAINT fk_RoomRoomType_Room
    FOREIGN KEY fk_RoomRoomType_Room(RoomId)
    REFERENCES Room(RoomId),
CONSTRAINT fk_RoomRoomType_RoomType
    FOREIGN KEY fk_RoomRoomType_RoomType(RoomTypeId) 
    REFERENCES RoomType(RoomTypeId)
);


CREATE TABLE Reservation (
ReservationId INT PRIMARY KEY AUTO_INCREMENT,
CustomerId INT NOT NULL,
RoomId INT NOT NULL,
Adults INT,
Children INT,
StartDate DATE NOT NULL,
EndDate DATE NOT NULL,
TotalRoomCost DECIMAL(4,2) ZEROFILL NOT NULL,
FOREIGN KEY fk_Reservation_Guests (CustomerId)
	REFERENCES Guests (CustomerId),
FOREIGN KEY fk_Reservation_Room(RoomId)
    REFERENCES Room(RoomId)
);



