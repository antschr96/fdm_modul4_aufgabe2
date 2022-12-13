### Zertifikatskurs Forschungsdatenmanagement 2022/23
#### Aufbaumodul Hacken & experimentieren mit Daten (14.11.2022 - 16.12.2022)

#### Aufgabe 3 - Shell Skript

Lösungsbeschreibung: 
Das Shell Skript erledigt folgende Aufgaben: 

+ Ersetze mit sed zunächst die Zeichenkette IMPORTANT[tab][tab], da dies in 8 Zeilen zu einer Verschiebung der Spalten führt.
+ Schneide mit cut die Spalten ISSN [5] und Erscheinungsjahr [12] aus der Tabelle.
+ Lösche mit sed die Prefixe issn, Issn, ISSN, die einige Werte in der Spalte ISSN enthalten. 
+ Sortiere alle Zeilen mit sort.
+ Dedupliziere alle Zeilen mit uniq.
+ Suche mit grep alle Zeilen, die mit einer Ziffer beginnen, um die überflüssigen Zeilen zu entfernen. 
+ Schreibe das Ergebnis in die Datei ergebnis.tsv [eigentlich war gefordert es in die Datei 022-11-25-Dates_and_ISSNs.tsv zu schreiben]
+ Überpüfe mit dem Kommando diff -w ergebnis.tsv 2022-11-25-Dates_and_ISSNs.tsv, ob die Dateien den gleichen Inhalt haben.
  Wenn das der Fall ist, benenne die Datei mit dem geforderten Namen um. Ist das nicht der Fall, gib eine Fehlermeldung aus. 
