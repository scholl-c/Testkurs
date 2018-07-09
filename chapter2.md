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
- c(min(Studis$Anwesend),max(Studis$Anwesend))
- summary(Studis$Anwesend)
- [ c(which.min(unique(Studis$Anwesend)),which.max(unique(Studis$Anwesend))) ]

`@hint`
Du brauchst die Funktionen min() und max(). Du solltest wissen, dass man auf Spalten in einem Dataframe mit einem $ zugreifen kann.

`@pre_exercise_code`

```{r}
Studis <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/f7c3df4f7a167efcf7ff74b306b8045a10f83365/Studierendenzaehlung.csv",sep=";")
```


`@sct`

```{r}
- Nein  
- Nein  
- Ja genau! 
```




