CREATE TABLE Customer
(   FirstName varchar(100) NULL,
    LastName varchar(100) NULL,
    CompanyName varchar(100) NULL,
    Street varchar(100),
    Number varchar(10),
    Zipcode varchar(6),
    City varchar(60),
    Country varchar(40),
    Password char(64),
    Email varchar(150) PRIMARY KEY,
    Credits NUMERIC(7,2),
    PhoneNumber char(20)
);

CREATE TABLE SubscriptionType
(   ID integer PRIMARY KEY,
    Price NUMERIC(7,2)
);

CREATE TABLE Subscription
(   ID integer PRIMARY KEY,
    Type integer REFERENCES SubscriptionType(ID),
    CustomerID varchar(150) REFERENCES Customer(Email), --zie referentie
    StartDate date,
    EndDate date
);

CREATE TYPE artType AS ENUM('schilderij','beeld','overig');
CREATE TABLE Series
(   ID integer PRIMARY KEY,
    Name varchar(100),
    Description varchar(10000)
);

CREATE TABLE Artwork
(   ID integer PRIMARY KEY,   
    Name varchar(255),
    Year smallint,
    Description varchar(10000),
    Tags varchar(1000),
    Style char(20),
    Period char(20),
    Price NUMERIC(7,2) NULL,
    Series integer REFERENCES Series(ID),
    ArtType artType,
    IsForSale boolean,
    Colour char(20),
    Height integer,
    Width integer,
    Depth integer
);

CREATE TYPE serviceType AS ENUM('reservation', 'rent', 'purchase');
CREATE TABLE Service
(   ID integer PRIMARY KEY,
    ServiceType serviceType,
    Customer varchar(150) REFERENCES Customer(Email), --zie referentie
    Artwork integer REFERENCES Artwork(ID),
    StartDate date,
    ExpDate date NULL,
    PurchaseDate date
);

CREATE TABLE Artist
(   ID integer PRIMARY KEY,
    Name varchar(255),
    DateOfBirth date,
    DateOfDeath date
);

CREATE TABLE MadeBy
(   ArtworkID integer REFERENCES Artwork(ID),
    ArtistID integer REFERENCES Artist(ID),
    PRIMARY KEY(ArtworkID, ArtistID)
);
