CREATE TABLE Customer
(   ID integer PRIMARY KEY,
    FirstName varchar(100) POSSIBLY NULL,
    LastName varchar(100) POSSIBLY NULL,
    CompanyName varchar(100) POSSIBLY NULL,
    Address varchar(150),
    HashedPass char(100),
    Email varchar(150),
    Credits NUMERIC(7,2),
    PhoneNumber char(20)
)

CREATE TYPE subscriptionType AS ENUM('sad', 'ok', 'happy');
CREATE TABLE Subscription
(   SubscriptionID integer PRIMARY KEY,
    Type subscriptionType,
    CustomerID integer REFERENCES Customer(ID),
    Price NUMERIC(7,2),
    StartDate date,
    EndDate date
)

CREATE TABLE Artwork
(   ID integer PRIMARY KEY,   
    Name varchar(255),
    Year smallint,
    Description varchar(10000),
    Tags varchar(1000),
    Price NUMERIC(7,2) POSSIBLY NULL
)

CREATE TABLE SerialArtwork
(   ID integer PRIMARY KEY,   
    Name varchar(255),
    Year smallint,
    Description varchar(10000),
    Tags varchar(1000),
    Price NUMERIC(7,2),
    Series integer REFERENCES Series(ID)
)

CREATE TABLE Series
(   ID integer,
    Name varchar(100),
    Description varchar(10000),
)



