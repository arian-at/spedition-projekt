#Daten einsehen (Kunden, Aufträge, Touren, Fahrer, LKWs)
SELECT * FROM Auftrag;
SELECT * FROM Tour;
SELECT * FROM Fahrer;
SELECT * FROM LKW;

#Auftrag löschen
DELETE FROM Auftrag WHERE AID = 10;

#Fahrer Status auf abwesend bzw. anwesend setzen
UPDATE Fahrer SET Status = 0 WHERE FID = 9;
UPDATE Fahrer SET Status = 1 WHERE FID = 3;

#Tour erstellen
INSERT INTO Tour (Auftrag, Tourplaner, LKW, Fahrer, Status)
VALUES (12, 3, 7, 5, 'geplant');

#Bestimmte TÜVs aufrufen
SELECT LID, TVDatum, Kennzeichen, Höhe, Breite, Status FROM LKW WHERE TVDatum >= 31-01-2025 AND Status = 1;

#Rechnungssumme in 2024
SELECT RID, Datum, Betrag FROM Rechnung WHERE Datum >= '2024-01-01' AND Datum < '2025-01-01';
SELECT SUM(Betrag) AS Gesamtsumme FROM Rechnung WHERE Datum >= '2024-01-01' AND Datum < '2025-01-01';