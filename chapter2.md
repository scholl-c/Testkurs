---
title: Grundlagen
description: "In dieser Lektion geht es um grundlegende Begriffe,\nstatistische Messgrößen, andere Kennzahlen und\nden Umgang mit Datensätzen. Dies ist also der Einstieg\nin die deskriptive Statistik."
---

## Erhebungsart

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 910001d0a4   
```


Bob ist ein ganz gewöhnlicher Student. Das neue Semester hat begonnen und heute ist sein erster Tag als Hilfskraft von Herrn Professor Ratistikus. "Was für eine langweilige Aufgabe!", denkt Bob, als er seine erste Aufgabe des Tages erfährt. Der Professor hat ihn gebeten die Teilnehmer seiner Seminare zu zählen. Um welche Erhebungsart handelt es sich dabei?


`@instructions`


`@hint`
Bob sieht in jedem Raum nach und zählt die Studierenden. Ein Experiment findet nur bei zwei verschiedenen Bedingungen statt.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- Experiment
- Befragung
- [Beobachtung]

`@feedback`
- Das ist leider nicht richtig.
- Das ist leider nicht richtig.
- Herzlichen Glückwunsch!

---

## Minimum und Maximum (1)

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


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}
test_mc(3, feedback_msgs = c("Falsch, achte auf die Fragestellung", "Falsch, achte auf die Fragestellung", "Ja, genau den kann man nicht verwenden", "Falsch, achte auf die Fragestellung"))
```


`@possible_answers`


`@feedback`


---

## Minimum und Maximum (2)

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 14e20e1505   
```


Wenn ich die Differenz zwischen den maximalen und minimalen anwesenden Studierenden berechne, bezeichnet man das als ... ?


`@instructions`


`@hint`
Es handelt sich um ein einfaches Maß für die Streuung.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- Differenzbreite
- [Spannweite]
- Dehnungswert
- Abstandshöhe

`@feedback`
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
ex() %>% check_function("colnames") %>% check_object("Studis") %>% check_equal()
success_msg("Toll gemacht!")
```


`@possible_answers`


`@feedback`


---

## Skalenniveau (1)

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 43ea0a6499   
```


Nachdem Bob jetzt mit deiner Hilfe die Spalte zu ``Veranstaltung`` umbenannt hat, schaut er im Veranstaltungsverzeichnis nach, welche Veranstaltung nun ein Seminar oder eine Vorlesung ist. Welchem Skalenniveau entspricht das?


`@instructions`


`@hint`
Seminar, Vorlesung, etc. sind Kategorien, die man in keine Rangfolge bringen kann.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- [Nominalskala]
- Ordinalskala
- Verhältniskala
- Intervallskala

`@feedback`
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
ex() %>% check_function("cbind") %>% check_object("Studis") %>% check_equal()
success_msg("Jaa! Volltreffer!")
```


`@possible_answers`


`@feedback`


---

## Datensätze zusammenführen (1)

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 3bccbd14d6   
```


Prof. Ratistikus hat für ihn noch mehr Informationen bereitgestellt. Er hat für Bob die Räume der Veranstaltungen und ihre Kapazität notiert. Bob steht vor der Herausforderung, die beiden Datensätze zusammenzuführen. Welche Funktion kann er dafür nutzen?


`@instructions`


`@hint`
``summary()`` kennst du bereits. Weißt du noch wofür wir das benutzen konnten? Mit ``mean()`` errechnest du den Mittelwert. Bleiben noch ``tapply`` oder ``merge``. Nimm dir hierfür die Dokumentation zur Hilfe. Du kannst die Funktionen auch auf einer lokalen Installation von R ausprobieren.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- mean()
- summary()
- [merge()]
- tapply()

`@feedback`
- Nee!
- Falsch
- Richtig!
- Leider falsch.

---

## Datensätze zusammenführen (2)

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: f08fa5a55c   
```


Prof. Ratistikus hat für ihn noch mehr Informationen bereitgestellt. Er hat für Bob die Räume der Veranstaltungen und ihre Kapazität notiert. Die Liste der Räume und deren Kapazität hat Prof. Ratistikus nach der alphabetischen Reihenfolge der Seminartitel notiert. 

Muss Bob vor dem Zusammenführen der Datensätze mit ``merge()`` seine Daten ebenfalls nach der alphabetischen Reihenfolge der Seminare notieren?


`@instructions`


`@hint`
``merge()`` führt die Datensätze nach den Seminartiteln zusammen; diese müssen also übereinstimmen.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- Ja
- [Nein]

`@feedback`
- Nein, das muss Bob nicht.
- Ja, richtig! Er muss sie nicht sortieren.

---

## Datensätze zusammenführen (3)

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
ex() %>% check_function("merge") %>% check_object("Studis") %>% check_equal()
success_msg("Herzlichen Glückwunsch! Das hat geklappt!")
```


`@possible_answers`


`@feedback`


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
Raeume <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/29d7ffd1e2d96f6b8b94ce9904d6ad5ba5f2644e/Raeume.csv")
Studis <- merge(Studis,Raeume)
```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}
ex() %>% check_mc(3, feedback_msgs = c("Falsch, achte auf die Fragestellung", "Falsch, achte auf die Fragestellung", "Ja, genau den kann man nicht verwenden"))
```


`@possible_answers`


`@feedback`


---

## Skalenniveau (2)

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 1cff02cfb2   
```


Wie ist die Variable 'Raum' skaliert?


`@instructions`


`@hint`
Kann man die Werte in ``Raum`` ordnen? Gibt es einen Nullpunkt?

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- [nominalskaliert]
- ordinalskaliert
- intervallskaliert
- verhältnisskaliert

`@feedback`
- Ja
- Nein
- Nein
- Nein

---

## Filtern

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: efe7d80ce1   
```


Prof. Ratistikus und Bob laufen gerade den Flur der Verwaltung entlang, als ihnen Frau Mustermann aus dem Sekretariat zufällig begegnet. Sie möchte für die Raumplanung wissen, welche Veranstaltungen Prof. Ratistikus in Raum 25-05.4C hat. Da Prof. Ratistikus sehr vergesslich ist, bittet er Bob schnell nachzuschauen. **Welcher Befehl gibt ihm nicht die gewünschten Veranstaltungen sondern eine Fehlermeldung?**


`@instructions`
- ``raum <- Raeume[Raeume$Raum=="25-05.4C",]``
- ``raum<-subset(Raeume,Raeume$Raum == "25-05.4C")``
- ``[raum <- Raeume[Raeume$Raum=="25-05.4C"]]``

`@hint`
Das Komma ist nicht bedeutungslos.

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
Raeume <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/29d7ffd1e2d96f6b8b94ce9904d6ad5ba5f2644e/Raeume.csv")
Studis <- merge(Studis,Raeume)
```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}
ex() %>% check_mc(3, feedback_msgs = c("Falsch, achte auf die Fragestellung", "Falsch, achte auf die Fragestellung", "Ja, genau den kann man nicht verwenden"))
```


`@possible_answers`


`@feedback`


---

## Length und Unique

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: 9f4864d200   
```


Prof. Ratistikus diktiert Bob diesen Befehl:
 ``length(unique(Studis$Raum))``. 

Wie ist das Ergebnis dieses Befehls zu interpetieren?


`@instructions`
- Durchschnittliche Länge der Raumnummern(-Zeichen)
- Summe der Raumnummer-Ziffern
- Anzahl der Einträge in der Spalte 'Raum'
- [Gesamtzahl der unterschiedlichen Räume]

`@hint`
Probiere den Befehl in der Konsole aus.

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
Raeume <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/29d7ffd1e2d96f6b8b94ce9904d6ad5ba5f2644e/Raeume.csv")
Studis <- merge(Studis,Raeume)
```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}
ex() %>% check_mc(4, feedback_msgs = c("Falsch","Falsch","Falsch","Richtig"))
```


`@possible_answers`


`@feedback`


---

## Mittelwert

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: 8357b5d959   
```


Prof. Ratistikus hat die Vermutung, dass zu seinen deutschsprachigen Kursen mehr Studenten erscheinen als in seinen englischsprachigen Kursen. Daraufhin bittet er Bob die Daten zu analysieren. Darf Bob den 
arithmetischen Mittelwert von der Variable ``Anwesend`` bilden?


`@instructions`
- [Ja]
- Nein

`@hint`
Überlege, wie die Variable skaliert ist.

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
Raeume <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/29d7ffd1e2d96f6b8b94ce9904d6ad5ba5f2644e/Raeume.csv")
Studis <- merge(Studis,Raeume)
```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}
ex() %>% check_mc(1, feedback_msgs = c("Richtig","Falsch"))
```


`@possible_answers`


`@feedback`


---

## Mittelwerte für Gruppen

```yaml
type: NormalExercise 
xp: 100 
key: abdd990282   
```


Da Bob den Mittelwert berechnen darf, möchte er zeigen, dass in den englischen Kursen durchschnittlich weniger Studierende teilnehmen als in den deutschen Kursen. 
Kannst du ihm dabei helfen?


`@instructions`
Erstelle ein neues Dataframe ``anwesend_nach_sprache``, in dem der arithmetische Mittelwert der anwesenden Studierenden für jeweils die englischen und die deutschen Kurse gelistet ist. 
Tipp: Benutze ``aggregate``

`@hint`
Tippe ``help(aggregate)`` in die Konsole ein.

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
Raeume <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/29d7ffd1e2d96f6b8b94ce9904d6ad5ba5f2644e/Raeume.csv")
Studis <- merge(Studis,Raeume)
```


`@sample_code`

```{r}

```


`@solution`

```{r}
anwesend_nach_sprache <- aggregate(Studis$Angemeldet ~ Studis$Sprache,FUN=mean)
```


`@sct`

```{r}
ex() %>% check_function("aggregate") %>% {
  check_arg(.,"formula") %>% check_equal()
  check_arg(.,"FUN") %>% check_equal()
} %>% check_object("anwesend_nach_sprache") %>% check_equal()
success_msg("Bob ist sehr zufrieden und bedankt sich für deine Hilfe.")
```


`@possible_answers`


`@feedback`

