README Hausaufgabe3
1. 	Die gesuchte Route wird in InputRoute gespeichert
2. 	Die vorhandenen Routen mit Srecken werden in Graph gespeichert mit dem Schema(KnotenAKnotenBStrecke,KnotenBKnotenCStrecke,...)
3.	Verschiedene Variablen werden initialisiert und aus InputRoute werden die Bindestriche und aus Graph werden die     Kommas entfernt
4.	Graph wird in seine einzelnen Elemente zerlegt und in Graph 1 gespeichert
5.	In den While-Schleifen wird ueberprueft ob der erste Knote und benachtbarte Knote von InputRoute sich auch in Graph befinden
	Wenn ja, der wird die Strecke zu @route addiert und @found um 1 hochgezaehlt.
6.	Sollte keine gemeinsamen Knoten mehr gefunden werden, wird ueberprueft ob die Route InputRoute gefunden wurde.
	Dazu wird ueberprueft welchen Wert found hat. Hat @found mindestens den Wert (InputRoute.size -1) dann wurde die Route gefunden.

