---
  title: "Grafiken"
  v2: true
  description: "In dieser Ausgabe\ndreht sich alles um 'Wie zeige ich meinen Lesern, was ich sagen will?'.\nIn Zeitungen, Wissensschaftsmagazinen oder in anderen\n(populär-)wissenschaftlichen Publikationen findest du\noft unterstützende Grafiken. Wir zeigen dir heute, welche Möglichkeiten R\ndazu bietet und wie du selbst überzeugende Grafiken erstellst.\nIm ersten Teil dieser Lektion erfährst du, wie du deine Daten\nmit Hilfe von Plots besser verstehen kannst. Im zweiten Teil werden wir Grafiken mit der\nBibliothek ggplot2 erstellen. Los geht es mit dem ersten Teil"

---
## Histogramm

```yaml
type: NormalExercise 
xp: 100 
key: 2867b34f3e   
```

Grafiken können helfen, die Verteilung und die Zusammensetzung der Daten zu untersuchen. Ebenso kann man Beziehungen und den Vergleich zwischen Variablen (in unserem Fall die Spalten) herausfinden. 

Eine Gruppe Studenten hat Gummibärchenpackungen untersucht und festgehalten, wie viele Bärchen und Farben sich jeweils in einer Packung befinden. Die Daten sind bereits in der Arbeitsumgebung geladen. Das Histogramm, Streudiagramm und der Boxplot können dir ähnliche Auskünfte über Verteilung von einer oder zwei Variablen geben wie der Befehl ``summary()``.

`@instructions`
Lasse dir das Histogramm der Variable ``Anzahl_Farben`` ausgeben. Dazu übergibst du die Variable 
  dem Befehl ``hist()``, wie z.B. ``hist(Gummibaerchen$Anzahl_Farben)``. Mach das mal.

`@hint`
Suche in der Hilfe nach der Verwendung des Befehl ``hist()`` und wenn du Probleme hast bei dem zusammengesetzten Variablen, benutze die Notation in eckigen Klammern statt der Dollar-Notation.

`@pre_exercise_code`

```{r}
Gummibaerchen <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
hist(Gummibaerchen$Anzahl_Farben)
```
`@sct`

```{r}
test_error()
test_student_typed("hist(Gummibaerchen$Anzahl_Farben)",not_typed_msg="Nein, so nicht.")
success_msg("Richtig so!")
```




