---
  title: "Grundlagen"
  description: "Umgang mit Datensätzen und Einstieg in die deskriptive Statistik"
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
## Insert exercise title here

```yaml
type: MultipleChoiceExercise

xp: 50

key: d546b2c206



```



`@instructions`
- c(min(Studis$Anwesend),max(Studis$Anwesend))
- hi

`@hint`


`@pre_exercise_code`
```{r}
Studis <- read.csv2("https://assets.datacamp.com/production/repositories/3196/datasets/1e5d9ec9fbf68a511b51b513183222dd40447e9a/Studierendenzaehlung.csv",sep="",skip=1)
```







