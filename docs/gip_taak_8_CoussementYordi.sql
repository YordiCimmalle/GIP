/* Databasa maken */
CREATE SCHEMA gip_taak_08_CoussementYordi;
use gip_taak_08_CoussementYordi;

/* Tabellen maken */

CREATE TABLE UserAccount(
	id int not null auto_increment primary key,
    name text not null,
	userName text not null,
    email text
);

CREATE TABLE Track(
	id int not null auto_increment primary key,
    user_id int not null,
	titel text,
	lengte text,
	informatie text,
	genre text
);

CREATE TABLE Reacties(
	id int not null auto_increment primary key,
	user_id int not null,
	track_id int not null,
	tijdstip datetime,
	inhoud text
);

/* Testdata invoeren */

INSERT INTO UserAccount(id, name, userName, email)
VALUES 
(1, "Yordi Coussement", "YordiC" , "yordi.coussement@immalle.be"),
(2, "Ricardo Coenen", "RicardoC" , "ricardo.coenen@immalle.be"),
(3, "Maarten Vissers", "MaartenV" , "maarten.vissers@immalle.be"),
(4, "Jens Van Hoof", "JensVH" , "jens.vanhoof@immalle.be"),
(5, "Wout Wynen", "WoutW" , "wout.wynen@immalle.be");

INSERT INTO Track(id, user_id, titel, lengte, informatie, genre)
VALUES
(1, 1, "Major Lazer - Roll The Bass (Coone Edit)", "04:00", "Gratis edit van Coone.", "Hardstyle"),
(2, 5, "Diplo & Sleepy Tom - Be Right There (Extended Mix)", "04:27", "Releasedatum: 16 oktober 2015.", "Deep House"),
(3, 4, "Valentino Khan - Deep Down Low", "03:06", "Deep House hit die 10 weken op nummer 3 stond in de Ultra Top Dance 50.", "Deep House"),
(4, 3, "Da Rick - Attention (Original Slam)", "04:36", "Retro hit uit 1997.", "Retro"),
(5, 1, "Pharrell Williams &  Snoop Dogg  - Drop It Like Its Hot", "04:26", "Veel gedraaide track op de R&B feestjes.", "R&B");

INSERT INTO Reacties(id, user_id, track_id, tijdstip, inhoud)
VALUES
(1, 1, 1, "2016-03-15 17:38:25", "Leuke edit, beter dan het origineel."),
(2, 3, 5, "2016-04-20 12:30:41", "Een van m'n favoriete tracks!"),
(3, 4, 3, "2016-04-04 09:07:51", "Zalige bass als je voor enkele woofers staat!"),
(4, 2, 2, "2016-04-01 11:56:06", "Beste stuk is ongetwijfeld tussen 01:03 en 01:34!"),
(5, 1, 4, "2013-02-27 21:39:34", "Een van de betere schijven uit de jaren 90!"),
(6, 5, 1, "2016-05-13 23:59:59", "De Febreze edit is toch beter dan deze."),
(7, 5, 2, "2016-03-09 01:21:47", "Rustige track, leuk voor in een warming up set."),
(8, 3, 2, "2014-04-20 05:19:15", "Dit is toch iets te rustig voor mij.");


/* Testsquery's */

/* toont alle gegevens van alle users */
/*SELECT name AS Naam, userName AS Gebruikersnaam, email AS Email FROM UserAccount;

/* toont alle Tracks met hun beschrijving */
SELECT titel AS Titel, informatie AS Beschrijving FROM Track;

/* toont alle Tracks van alle users */
/*SELECT name AS Naam, UserName AS Gebruikersnaam, titel AS Titel, lengte AS Lengte, informatie AS Beschrijving, genre AS Genre FROM UserAccount 
JOIN Track ON UserAccount.id = Track.user_Id;*/

/* toont alle reacties van alle users */
/*SELECT userName AS Gebruikersnaam, Track_Id AS TrackID, inhoud AS Inhoud, tijdstip AS Tijdstip FROM UserAccount
JOIN Reacties ON UserAccount.id = Reacties.Track_id;*/
