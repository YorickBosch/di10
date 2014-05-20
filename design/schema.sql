CREATE TABLE Customer
(   ID integer PRIMARY KEY, --mogelijk verandering naar String voor gebruik als username
    FirstName varchar(100) NULL,
    LastName varchar(100) NULL,
    CompanyName varchar(100) NULL,
    Address varchar(100),
    Zipcode varchar(6),
    City varchar(60),
    Country varchar(40),
    HashedPass char(100),
    Email varchar(150),
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
    CustomerID integer REFERENCES Customer(ID), --zie referentie
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
    IsForSale boolean
);

CREATE TYPE serviceType AS ENUM('reservation', 'rent', 'purchase');
CREATE TABLE Service
(   ID integer PRIMARY KEY,
    ServiceType serviceType,
    Customer integer REFERENCES Customer(ID), --zie referentie
    Artwork integer REFERENCES Artwork(ID),
    StartDate date,
    ExpDate date,
    PurchaseDate date
);
