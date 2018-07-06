---
  title: "Syntax"
  description: "Einfache Rechenoperationen und Zuweisungen"
  v2: true

---
## Arithmetische Operationen

```yaml
type: NormalExercise

xp: 100

key: 2401a95bb9



```

Wir befinden uns im OP-Saal. Der Patient ist erst vor Kurzem eingeliefert worden. Die OP wird voraussichtlich 2 Stunden dauern. Wie viele Sekunden sind das bloß? In so einer Notsituation darf kein Fehler passieren und der Assistenzarzt weiß nicht wo ihm der Kopf steht, deshalb verlässt er sich auf R.

Du kannst arithmetische Befehle wie gewohnt benutzen, d.h. das Pluszeichen, Minuszeichen, Sternchen und den Schrägstrich für die arithmetischen Grundoperationen. 
Beispiel: ``2+2``

`@instructions`
Errechne die Sekunden, die der leitende Oberarzt bei einer 2-stündigen OP im OP-Saal verbringen muss. Verwende dazu min. einen arithmetischen Operator.

`@hint`
Eine Stunde hat 60 Minuten, eine Minute besteht aus 60 Sekunden.



`@solution`
```{r}
2*60*60
```
`@sct`
```{r}
test_error()
test_output_contains("7200",incorrect_msg="falsch")
success_msg("Super!")
```






---
## Zuweisungen

```yaml
type: NormalExercise

xp: 100

key: 6c4623ef65



```



`@instructions`


`@hint`










