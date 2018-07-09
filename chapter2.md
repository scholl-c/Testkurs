---
  title: "Grundlagen"
  description: "In dieser Lektion geht es um grundlegende Begriffe,\nstatistische Messgrößen, andere Kennzahlen und\nden Umgang mit Datensätzen. Dies ist also der Einstieg\nin die deskriptive Statistik."
  v2: true

---
## Erhebungsart

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 910001d0a4   
```

Bob ist ein ganz gewöhnlicher Student. Das neue Semester hat begonnen und heute ist sein erster Tag als Hilfskraft von Herrn Professor Ratistikus. "Was für eine langweilige Aufgabe!", denkt Bob, als er seine erste Aufgabe des Tages erfährt. Der Professor hat ihn gebeten die Teilnehmer seiner Seminare zu zählen. Um welche Erhebungsart handelt es sich dabei?


`@hint`
Bob sieht in jedem Raum nach und zählt die Studierenden. Ein Experiment findet nur bei zwei verschiedenen Bedingungen statt.





`@possible_answers`
- Experiment
- Befragung
- [Beobachtung]

`@feedbacks`
- Das ist leider nicht richtig.
- Das ist leider nicht richtig.
- Herzlichen Glückwunsch!





---
## Minimum und Maximum

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: d546b2c206   
```

Bob war fleißig und hat in allen Vorlesungen und Seminaren von Prof. Ratistikus die Studierenden gezählt. Er möchte diese Daten mit R auswerten. Dazu liest er seine csv-Datei
namens ``Studierendenzaehlung.csv`` unter dem Variablennamen ``Studis`` in R ein. Er macht das mit ``read.csv2("Studierendenzaehlung.csv",sep=",",skip=1)``. 

> Super, das hat schon mal geklappt!, freut sich Bob. 

Er fragt sich, in welcher Veranstaltung wohl die meisten und die wenigstens Studierenden anwesend waren. Kannst du ihm helfen? **Welchen Befehl kann er NICHT dazu verwenden?**

Das Minimum einer Datenreihe kannst du mit der Funktion ``min`` und das Maximum entsprechend mit der Funktion ``max`` berechnen. Gib doch mal ``min(Studis$Anwesend)`` ein. Du erinnerst dich: Mit dem Dollarzeichen kannst du eine Spalte aus einem Datensatz (hier: die Spalte ``Anwesend``) auswählen.

`@instructions`
- ``c(min(Studis$Anwesend),max(Studis$Anwesend))``
- ``summary(Studis$Anwesend)``
-  [``c(which.min(unique(Studis$Anwesend)),which.max(unique(Studis$Anwesend)))``]
- ``min(Studis$Anwesend); max(Studis$Anwesend)``

`@hint`
Du brauchst die Funktionen min() und max(). Du solltest wissen, dass man auf Spalten in einem Dataframe mit einem $ zugreifen kann.

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
```


`@sct`

```{r}
test_mc(3, feedback_msgs = c("Falsch, achte auf die Fragestellung", "Falsch, achte auf die Fragestellung", "Ja, genau den kann man nicht verwenden", "Falsch, achte auf die Fragestellung"))
```






---
## Minimum und Maximum

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 14e20e1505   
```

Wenn ich die Differenz zwischen den maximalen und minimalen anwesenden Studierenden berechne, bezeichnet man das als ... ?


`@hint`
Es handelt sich um ein einfaches Maß für die Streuung.





`@possible_answers`
- Differenzbreite
- [Spannweite]
- Dehnungswert
- Abstandshöhe

`@feedbacks`
- Nein, falsch
- Ja, richtig!
- Nein, falsch
- Nein, falsch





---
## Spaltennamen ändern

```yaml
type: NormalExercise 
xp: 100 
key: 9deef9b064   
```

Prof. Ratistikus ist stets sehr bedacht und akribisch genau. Er weist Bob darauf hin, den Spaltennamen von ``Seminar`` zu dem allgemeineren Titel ``Veranstaltung`` zu ändern. Wie kann er das tun? Benutze die Funktion ``colnames()``.

`@instructions`
Ändere den Spaltennamen zu ``Veranstaltung``.

`@hint`
Mit [1] kannst du auf den ersten Wert in einem Objekt zugreifen.

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
colnames(Studis)[1] <- "Veranstaltung"
```
`@sct`

```{r}
test_error()
test_student_typed("colnames(Studis)[1] <- 'Veranstaltung'", not_typed_msg = "Das war leider noch nicht ganz richtig.")
success_msg("Toll gemacht!")
```






---
## Skalenniveau

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 43ea0a6499   
```

Nachdem Bob jetzt mit deiner Hilfe die Spalte zu ``Veranstaltung`` umbenannt hat, schaut er im Veranstaltungsverzeichnis nach, welche Veranstaltung nun ein Seminar oder eine Vorlesung ist. Welchem Skalenniveau entspricht das?


`@hint`
Seminar, Vorlesung, etc. sind Kategorien, die man in keine Rangfolge bringen kann.





`@possible_answers`
- [Nominalskala]
- Ordinalskala
- Verhältniskala
- Intervallskala

`@feedbacks`
- Das ist richtig!
- Falsch
- Falsch
- Falsch





---
## Spalte anfügen

```yaml
type: NormalExercise 
xp: 100 
key: 77229759c8   
```

Bob hat sich die Veranstaltungsarten als Faktor ``v_typ`` in R geladen. Er möchte diese Spalte an das Dataframe ``Studis`` anfügen und es damit überschreiben, d.h. das Dataframe erweitern um diese Spalte. Wie kann er das tun?

`@instructions`
Füge die Spalte an das Dataframe an. Benutze ``cbind``. Weitere Hilfe findest du, wenn du ``?cbind`` in die Konsole eingibst.

`@hint`
Benutze die Funktion ``cbind()``

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
v_typ <- as.factor(c("Vorlesung","Aufbauseminar","Vorlesung","Vorlesung","Seminar","Vorlesung","Seminar","Vorlesung","Seminar","Seminar"))
```
`@sample_code`

```{r}

```

`@solution`

```{r}
Studis <- cbind(Studis,v_typ)
```
`@sct`

```{r}
test_error()
test_object("Studis")
success_msg("Jaa! Volltreffer!")

```






---
## Datensätze zusammenführen

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 3bccbd14d6   
```

Prof. Ratistikus hat für ihn noch mehr Informationen bereitgestellt. Er hat für Bob die Räume der Veranstaltungen und ihre Kapazität notiert. Bob steht vor der Herausforderung, die beiden Datensätze zusammenzuführen. Welche Funktion kann er dafür nutzen?


`@hint`
``summary()`` kennst du bereits. Weißt du noch wofür wir das benutzen konnten? Mit ``mean()`` errechnest du den Mittelwert. Bleiben noch ``tapply`` oder ``merge``. Nimm dir hierfür die Dokumentation zur Hilfe. Du kannst die Funktionen auch auf einer lokalen Installation von R ausprobieren.





`@possible_answers`
- mean()
- summary()
- [merge()]
- tapply()

`@feedbacks`
- Nee!
- Falsch
- Richtig!
- Leider falsch.





---
## Datensätze zusammenführen

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: f08fa5a55c   
```

Prof. Ratistikus hat für ihn noch mehr Informationen bereitgestellt. Er hat für Bob die Räume der Veranstaltungen und ihre Kapazität notiert. Die Liste der Räume und deren Kapazität hat Prof. Ratistikus nach der alphabetischen Reihenfolge der Seminartitel notiert. 

Muss Bob vor dem Zusammenführen der Datensätze mit ``merge()`` seine Daten ebenfalls nach der alphabetischen Reihenfolge der Seminare notieren?


`@hint`
``merge()`` führt die Datensätze nach den Seminartiteln zusammen; diese müssen also übereinstimmen.





`@possible_answers`
- Ja
- [Nein]

`@feedbacks`
- Nein, das muss Bob nicht.
- Ja, richtig! Er muss sie nicht sortieren.





---
## Datensätze zusammenführen

```yaml
type: NormalExercise 
xp: 100 
key: bc561c01f0   
```

Bob möchte nun die beiden Datensätze ``Studis`` und ``Raeume`` in ``Studis`` zusammenführen (und damit ``Studis`` überschreiben.

`@instructions`
Hilf Bob, die Datensätze in ``Studis`` zusammenzuführen. Gib den dazu nötigen Befehl ein.

`@hint`
Benutze den Befehl ``merge()``

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
Raeume <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/29d7ffd1e2d96f6b8b94ce9904d6ad5ba5f2644e/Raeume.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
Studis <- merge(Studis,Raeume)
```
`@sct`

```{r}
test_error()
success_msg("Herzlichen Glückwunsch! Das hat geklappt!")
```






---
## Differenz zweier Spalten

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: 6feb828762   
```

Prof. Ratistikus möchte wissen, wie sehr er sich bei der Raumplanung verschätzt hat. Dazu möchte er die absolute Differenz der angemeldeten Studenten und der Raumkapazität berechnen. **Welcher Befehl führt NICHT zum gewünschten Ergebnis?**

`@instructions`
- ``Studis$verschaetzt <- abs(Studis$Angemeldet-Studis$Raumkapazität)``
- ``Studis$verschaetzt <- abs(diff(Studis$Angemeldet,Studis$Raumkapazität))``
- [``Studis$verschaetzt <- lapply(Studis$Angemeldet,Studis$Raumkapazität,diff)``]

`@hint`
``abs()`` gibt den Betrag an, ``diff()`` und das Minus haben hier denselben Effekt

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
```


`@sct`

```{r}
test_mc(3, feedback_msgs = c("Falsch, achte auf die Fragestellung", "Falsch, achte auf die Fragestellung", "Ja, genau den kann man nicht verwenden"))
```




