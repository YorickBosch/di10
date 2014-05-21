--Zoeken op naam
SELECT a.* FROM Artwork a
WHERE a.Name LIKE "%...%";

--Zoeken op primaire kleur
SELECT a.* FROM Artwork a
WHERE a.Colour = ???;

--Zoeken op tags

--Zoeken op Kunstenaar
SELECT a.* FROM Artwork a, MadeBy m, Artist a0
WHERE a.ID = m.ArtworkID
AND m.ArtistID = a0.ID
AND a0.Name = "%...%";

--Zoeken op Stijl
SELECT a.* FROM Artwork a
WHERE a.Style = "%...%";

--Zoeken op Periode
SELECT a.* FROM Artwork a
WHERE a.Period = "%...%";

--Zoeken op Type
SELECT a.* FROM Artwork a
WHERE a.Type = "%...%";

--Zoeken op Naam
SELECT a.* FROM Artwork a
WHERE a.Name LIKE "%...%";

--Zoeken op afmetingen
SELECT a.* FROM Artwork a
WHERE a.Height 'hoger, lager, gelijk aan' = ' '
AND a.Width 'hoger, lager, gelijk aan' = ' '
AND a.Depth 'hoger, lager, gelijk aan' = ' ';

--Zoeken op afgebeelde
Tags

--Zoeken op koopbaarheid
SELECT a.* FROM Artwork a
WHERE a.IsForSale = true/false;

--Zoeken op status
SELECT a.* FROM Artwork a, Service s
WHERE a.ID = s.Artwork
AND current_date < s.ExpDate
AND current_date > s.StartDate
AND s.ServiceType = "%...%";

--Zoeken op serie
SELECT a.* FROM Artwork a
WHERE 
-- SERIE DEFINIEREN

--Zoeken op jaartal
SELECT a.* FROM Artwork a
WHERE a.YEAR 'hoger, lager, gelijk aan' = ' ';

--Zoeken op prijs
SELECT a.* FROM Artwork a
WHERE a.Price >= ' '
AND a.Price <= ' ';


--Dropdown menu Prijs
SELECT MAX(a.Price) FROM Artwork a;

--Dropdown menu Kleur
SELECT DISTINCT a.Colour FROM Artwork a;

--Dropdown menu Stijl
SELECT DISTINCT a.Style FROM Artwork a;

--Dropdown menu Periode
SELECT DISTINCT a.Period FROM Artwork a;

--Dropdown menu Type
SELECT DISTINCT a.Type FROM Artwork a;

--Dropdown menu Afmetingen
SELECT MAX(a.Height), MIN(a.Height) FROM Artwork a;
SELECT MAX(a.Width), MIN(a.Width) FROM Artwork a;
SELECT MAX(a.Depth), MIN(a.Depth) FROM Artwork a;

--Dropdown menu Status
SELECT DISTINCT s.ServiceType FROM Service s;
