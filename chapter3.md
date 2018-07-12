---
  title: "Datenstrukturen"
  v2: true
  description: "In dieser Lektion geht es um Persönlichkeitstypen... äääh.. Datentypen.  Da gibt es die pünktlichen, gewissenhaften oder die mit der Einstellung 'wir nehmen's wie es kommt'. Und nicht nur im echten Leben entwickelt man ein Gespür, wie mit verschiedenen Persönlichkeitstypen... äh Datentypen umzugehen ist. Eine große Quelle von Missverständnissen ist schon das Kennenlernen. Beim Einlesen von Daten legt die Funktion, die zum Einlesen benutzt wird, die Datentypen erstmal automatisch fest. Da können schon mal Vorurteile entstehen."

---
## Datentypen anzeigen

```yaml
type: NormalExercise 
lang: r
xp: 100 
skills: 1
key: fa0c9a259f   
```

Mit der Funktion ``typeof()`` kannst du dir den Datentyp eines Objekts anzeigen lassen.

`@instructions`
Lasse dir den Datentyp von der Spalte ``speed`` von dem Datensatz ``cars`` anzeigen.

`@hint`
Referenziere mit dem Dollarzeichen auf die Spalte ``speed``.



`@solution`

```{r}
typeof(cars$speed)
```
`@sct`

```{r}
test_error()
test_function("typeof",incorrect_msg="Leider falsch!")
success_msg("Ja, genau!")
```






---
## Verschiedene Datentypen

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: f127fa1af0   
```

Welchen Datentyp gibt es nicht?


`@hint`
Schaue dir andere Datensätze an und bestimme mit ``typeof()`` ihre Datentypen.





`@possible_answers`
- double
- integer
- character
- complex
- [easy]

`@feedbacks`
- Nein, den gibt es.
- Nein, den gibt es.
- Nein, den gibt es.
- Nein, den gibt es.
- Ja, den gibt es nicht in R!





---
## Datentyp erkennen

```yaml
type: TabExercise 
xp: 100 
key: 18a1b4f5fa   
```

Nachdem man nun andere besser kennengelernt hat, sortiert man sie gerne mal in andere imaginäre Schubladen um. Das kannst du auch mit den Daten in R machen. 
Wir arbeiten im Folgenden mit dem Objekt namens ``daten``. 

Exkurs: Falls du mal mit Zeitinverallen, der Dauer o.ä. umgehen musst, schaue dir das Paket namens ``lubridate`` an.



`@pre_exercise_code`

```{r}
daten <- c("04.03.1999","12.06.1973","22.01.2018","09.05.2013")
```








***



```yaml
type: NormalExercise 
xp: 35 
key: 7b3ea49696   
```



`@instructions`
Bestimme den Datentyp von ``daten`` mit ``typeof()``.

`@hint`
Benutze die Funktion ``typeof()`` und wende sie auf ``daten`` an.


`@sample_code`

```{r}

```

`@solution`

```{r}
typeof(daten)
```
`@sct`

```{r}
test_error()
test_student_typed("typeof(daten)",not_typed_msg="Das war leider falsch.")
success_msg("Super!")
```







***



```yaml
type: NormalExercise 
xp: 35 
key: 7568a92801   
```



`@instructions`
Das sind also Zeichenketten _(character)_. Wenn du dir ``daten`` ausgeben lässt, siehst du, dass es sich um Daten handelt. Wenn du zum Beispiel eine Grafik mit zeitlichem Verlauf erstellen möchtest, müssen dazu diese Daten auch als Daten interpretiert werden. Das geht hier zum Beispiel mit der Funktion ``as.Date()``. Die Funktion braucht allerdings noch einen Hinweis, wie die Daten formatiert sind. Dazu werden Platzhalter verwendet wie ``%m`` für Monat, ``%d`` für Tag oder ``%Y`` für eine vierstellige Jahreszahl. Weitere Abkürzungen findest du in der Dokumentation. Das Format in diesem Fall ist ``%d.%m.%Y`` und muss als zweites Argument übergeben werden. Wende die Funktion ``as.Date()`` auf ``daten`` an und überschreibe dabei ``daten``.

`@hint`
Benutze ``as.Date()``. Übergib der Funktion als erstes unser Objekt ``daten`` und als zweites das Format.


`@sample_code`

```{r}

```

`@solution`

```{r}
daten <- as.Date(daten,"%d.%m.%Y")
```
`@sct`

```{r}
test_error()
test_object("daten",incorrect_msg="Nee")
success_msg("Das hat gut geklappt!")
```







***



```yaml
type: NormalExercise 
xp: 30 
key: bb8c72d423   
```



`@instructions`
Wenn du eine Arbeitsumgebung, wie z. B. ``RStudio`` nutzt, kannst du nach diesem Schritt sehen, dass sich der Datentyp verändert hat und unser Datum richtig erkannt wurde. 

Die Funktion ``weekdays()`` gibt dir jetzt die Wochentage der Daten an. Wende die Funktion ``weekdays()`` auf ``daten`` an.

`@hint`
Benutze die Funktion ``weekdays()``


`@sample_code`

```{r}
daten <- as.Date(daten,"%d.%m.%Y")
```
`@solution`

```{r}
weekdays(daten)
```
`@sct`

```{r}
test_error()
test_output_contains("weekdays(daten)",incorrect_msg="nee")
success_msg("Sehr gut!")
```







---
## Datentypen verändern

```yaml
type: TabExercise 
xp: 100 
key: d3d561c9b0   
```

Der Datentyp ``character``, d.h. Zeichenkette, ist nach der Art 'Wir nehmen's wie's kommt', weil man alle möglichen Zeichen darin speichern kann. Auch Zahlen. Aber man kann, selbst wenn man nur Zahlen gespeichert hat, nicht damit rechnen.



`@pre_exercise_code`

```{r}
zahlen <- c("4","5.6","12","29","4.4")
```








***



```yaml
type: NormalExercise 
xp: 35 
key: ea95814b47   
```



`@instructions`
Versuche mit dem Objekt ``zahlen`` zu rechnen, in dem du die Summe berechnest mit ``sum()``.

`@hint`
Berechne die Summe von ``zahlen`` mit ``sum()``


`@sample_code`

```{r}

```

`@solution`

```{r}
sum(zahlen)
```
`@sct`

```{r}
test_error()
test_output_contains("sum(zahlen)",incorrect_msg="Falsch!")
success_msg("Super gemacht!")
```







***



```yaml
type: NormalExercise 
xp: 35 
key: ba65c7eb14   
```



`@instructions`
Du erhältst den Fehler, dass es sich um einen ungültigen Typ handelt. Um mit diesen Zahlen die Summe zu berechnen, musst du sie umwandeln in den Double-Datentyp mit ``as.numeric()`` oder ``as.double()``. Der Integer-Datentyp ist hier nicht ausreichend, weil es sich nicht ausschließlich um Ganze Zahlen handelt. Parse ``zahlen`` als double und überschreibe damit ``zahlen``.

`@hint`
Überschreibe ``zahlen`` und wandle ``zahlen`` in einen Double-Datentyp mit ``as.double()`` um.


`@sample_code`

```{r}

```

`@solution`

```{r}
zahlen <- as.double(zahlen)
```
`@sct`

```{r}
test_error()
test_object("zahlen")
success_msg("Toll!")
```







***



```yaml
type: NormalExercise 
xp: 30 
key: d78701c724   
```



`@instructions`
Nun kannst du nochmal versuchen, die Summe zu berechnen.

`@hint`
Berechne die Summe von ``zahlen`` mit ``sum()``


`@sample_code`

```{r}

```

`@solution`

```{r}
sum(zahlen)
```
`@sct`

```{r}
test_error()
test_output_contains("sum(zahlen)",incorrect_msg="Falsch!")
success_msg("Super gemacht!")
```







---
## Objekttyp

```yaml
type: NormalExercise 
xp: 100 
key: 1fc7e418af   
```

Möchtest du nicht den Typ der Daten, sondern den des Objekts wissen, kannst du das mit der Funktion ``class()`` herausfinden.

`@instructions`
Wende die Funktion auf ``geschlecht`` an.

`@hint`
Benutze die Funktion ``class()`` und übergib der Funktion ``geschlecht``.

`@pre_exercise_code`

```{r}
geschlecht <- factor(c("m", "m", "w", "m", "w", "w", "w", "w", "w", "w", "m", "w"))
```

`@solution`

```{r}
class(geschlecht)
```
`@sct`

```{r}
test_error()
test_output_contains("class(geschlecht)",incorrect_msg="Falsch")
success_msg("Juhhuu!")
```






---
## Faktoren

```yaml
type: NormalExercise 
xp: 100 
key: 33990503c9   
```

Wenn du Datensätze mit ``read.csv`` einliest, kommt es vor, dass Spalten nicht als ``character`` erkannt werden, sondern als ``factor`` eingelesen werden. Faktoren (factors) sind für nominalskalierte Daten geeignet und haben sogenannte ``levels``, das sind die verschiedenen Ausprägungen. Beispielsweise enthält eine Spalte die Geschlechter und die ``levels`` wären dann entsprechend männlich und weiblich.

Es kann sein, dass die Faktoren Probleme machen und kann daher sinnvoll sein, sie umzuwandeln. Am Einfachsten geht das mit ``as.vector()``.

`@instructions`
Wandle ``geschlecht`` in einen Vektor um und überschreibe ``geschlecht``.

`@hint`
Benutze ``as.vector()`` und übergib der Funktion ``geschlecht``.

`@pre_exercise_code`

```{r}
geschlecht <- factor(c("m", "m", "w", "m", "w", "w", "w", "w", "w", "w", "m", "w"))
```

`@solution`

```{r}
geschlecht <- as.vector(geschlecht)
```
`@sct`

```{r}
test_error()
test_object("geschlecht")
success_msg("Sehr gut! Du weißt jetzt, wie du mit den Datentypen umgehen kannst.")
```




