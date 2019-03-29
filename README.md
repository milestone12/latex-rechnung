# latex-rechnung
Bei diesem Repository handelt es sich um eine LaTeX Rechnungsvorlage.
Die Vorlage ist primär für die Rechnungslegung von Dienstleistungen gedacht.
Sie enthält unter anderem eine Klausel für die Kleinunternehmerregelung gemäß
§19 UStG.

## PDF-Datei mit `make` erzeugen
PDF-Datei `document.pdf` erzeugen:
```bash
make
```

Eigenen Dateinamen vergeben, z.B. `rechnung-01.pdf`:
```bash
make rechnung-01.pdf
```

### Verzeichnis aufräumen
Nur temporäre Dateien:
```bash
make clean_tempfiles
```

Temporäre Dateien und PDF-Dokument:
```bash
make clean
```

## Anpassung
* `_main.tex`: Hauptdatei für die Erstellung der PDF-Datei mittels LaTeX oder
  XeLaTeX
    * Zur Verwendung eines anderen Logos muss der Pfad in zum Logo in `_main.tex` angepasst werden
* `_invoice.tex`: Enthält die Daten für die Abrechnung (Anzahl der Stunden, Rabatte, etc.)
    * Die Gesamtsumme wird automatisch berechnet.
    * für induviduelle Anpassungen müssen Änderungen in den Dateien `ìnvoice.def` und `ìnvoice.sty` vorgenommen werden
        * [detaillierte Informationen zum LaTeX invoice Paket](ftp://ftp.rrzn.uni-hannover.de/pub/mirror/tex-archive/macros/latex/contrib/invoice/doc/invoice.pdf)
* `_data.tex`: Enthält die Kundendaten, als auch eigene Daten (Kontodaten, Steuernummer, Anschriften, Formulierungen, etc.)

## Modifikationen gegenüber Original
* Automatische Verwendung des richtigen Dezimalzeichens abhängig von der Sprache des Dokuments, z.B. das Komma in Deutsch und der Dezimalpunkt in Englisch
* In der deutschen Übersetzung wird _Unit Rate_ nun mit _Preis/Einheit_ übersetzt
