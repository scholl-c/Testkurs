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

Eine Gruppe Studenten hat Gummibärchenpackungen untersucht und festgehalten, wie viele Bärchen und Farben sich jeweils in einer Packung befinden. Die Daten sind als Datensatz ``Gummibaerchen`` bereits in der Arbeitsumgebung geladen. Das Histogramm, Streudiagramm und der Boxplot können dir ähnliche Auskünfte über Verteilung von einer oder zwei Variablen geben wie der Befehl ``summary()``.

`@instructions`
Lasse dir das Histogramm der Variable ``Anzahl_Farben`` ausgeben. Dazu übergibst du die Variable dem Befehl ``hist()``, wie z.B. ``hist(Gummibaerchen$Anzahl_Baeren)``. Mach das mal.

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






---
## Histogramm lesen

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: c116410a3e   
```

Sieh dir nochmal das eben erzeugte Histogramm an! Du siehst die Häufigkeiten der Anzahl der Farben. Auf der x-Achse erkennst du dass es minimal 4 und maximal 6 verschiedene Farben pro Beutel gibt. Was ist die häufigste Anzahl Farben in den untersuchten Beuteln?

`@instructions`
- 4
- [5]
- 6

`@hint`
Etwas ungeschickt ist hier die Aufteilung der x-Achse in Dezimalwerte. Es gibt jedoch eigentlich nur vollständige Gummibärchen und daher nur ganzzahlige Werte.

`@pre_exercise_code`

```{r}
Gummibaerchen <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
hist(Gummibaerchen$Anzahl_Farben)
```


`@sct`

```{r}
test_mc(2,"Nein","Ja","Nein")
```






---
## Nominalskalierte Variable plotten

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 8aff2152fd   
```

Kannst du mit `hist()` auch die Häufigkeiten einer nominalskalierten Variable plotten? Zum Beispiel hast du eine Umfrage erstellt und möchtest die Häufigkeiten der jeweiligen Geschlechter plotten.


`@hint`
Die Skalierung der x-Achse erfolgt in Intervallen und erfordert eine Reihenfolge.





`@possible_answers`
- Ja
- [Nein]

`@feedbacks`
- Falsch
- Richtig





---
## Achsenbeschriftungen

```yaml
type: NormalExercise 
xp: 100 
key: ea8e5425fb   
```

Wie wir die Häufigkeiten einer nominalskalierten Variable plotten können, behandeln wir später im Verlauf der Lektion. Das Histogramm bietet eine erste, einfache Möglichkeit numerische Variablen zu plotten und z.B. auf Normalverteilung zu untersuchen.

Bei so wenigen ganzzahligen Werten ist das Histogramm weniger schön. Da es erstmal um das Prinzip geht, bearbeiten wir nun noch das Diagramm. Es fehlen noch die richtigen **Achsenbeschriftungen**. Mit den Attributen `main`, `xlab` und `ylab` kannst du das Histogramm und die entsprechenden Achsen beschriften. 

_(Tipp: In dem Mit dem Pfeiltaste nach oben, erhältst du deine zuletzt eingegebenen Befehle und kannst diese wiederverwenden. Hier haben wir den letzten Befehl für dich eingetragen.)_

`@instructions`
Beschrifte die Achsen wie folgt: Der Titel soll `Histogramm Anzahl Gummibaerchen` heißen, die y-Achse soll mit `Haeufigkeit` und die x-Achse mit `Anzahl` beschriftet werden.

`@hint`
Suche in der Hilfe nach `hist()` bzw. gib `?hist` in die Konsole ein.

`@pre_exercise_code`

```{r}
Gummibaerchen <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
```
`@sample_code`

```{r}
hist(Gummibaerchen$Anzahl_Farben)
```
`@solution`

```{r}
hist(Gummibaerchen$Anzahl_Farben,
       main="Histogramm Anzahl Gummibaerchen",
       xlab="Anzahl",
       ylab="Haeufigkeit")
```
`@sct`

```{r}
test_error()
test_function("hist(Gummibaerchen$Anzahl_Farben,main='Histogramm Anzahl Gummibaerchen',xlab='Anzahl',ylab='Haeufigkeit')")
success_msg("Geschafft!")
```






---
## Streudiagramm

```yaml
type: NormalExercise 
xp: 100 
key: d9dee3c3ca   
```

Ein nächstes, sehr einfaches Diagramm, ist der x-y-Plot bzw. das Streudiagramm. Damit kannst du die Verteilung von zwei Variablen plotten. Dabei erkennst du auch, ob diese Variablen womöglich in Beziehung stehen. Der Befehl dazu ist `plot()`

`@instructions`
Lasse dir das Streudiagramm für die Variablen `Anzahl_Farben` und `Anzahl_Baeren` anzeigen. Du kannst damit sehen, ob Packungen mit mehr Bären auch mehr oder sogar weniger Farben enthalten.

`@hint`
`plot` benötigt mindestens zwei Argumente. In diesem Fall die beiden Variablen

`@pre_exercise_code`

```{r}
Gummibaerchen <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
plot(Gummibaerchen$Anzahl_Baeren,Gummibaerchen$Anzahl_Farben)
```
`@sct`

```{r}
test_error()
test_function("plot",incorrect_msg="Dieser Weg ist falsch.")
success_msg("Sehr gut!")
```






---
## Streudiagramm-Ansicht

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: 2683758429   
```

Auch hier kannst du mit `xlab` und `ylab` die Achsen ordentlich beschriften und mit `main` der Grafik einen Titel geben. Warum siehst du hier nur fünf Datenpunkte, obwohl `Gummibaerchen` eigentlich zwanzig Zeilen umfasst?

`@instructions`
- Das muss ein Fehler sein
- Die Datei wurde nicht korrekt eingelesen
- Die Punkte liegen übereinander und erscheinen deswegen als eins
- Die Achsen sind nicht lang genug sodass man alle Punkte erkennen kann

`@hint`
Du kannst die Grafik mit dem Button 'Zoom' vergrößern.

`@pre_exercise_code`

```{r}
Gummibaerchen <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
plot(Gummibaerchen$Anzahl_Baeren,Gummibaerchen$Anzahl_Farben)
```


`@sct`

```{r}
test_mc(3,"Nein, alles korrekt.","Doch, das hat geklappt","Das ist der Grund!","R passt die Skalierung in der Regel automatisch an.")
```




