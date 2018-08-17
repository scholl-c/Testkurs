---
  title: "Grafiken"
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
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
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
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
hist(Gummibaerchen$Anzahl_Farben)
```

`@sct`

```{r}
test_mc(2,feedback_msgs = c("Nein","Ja","Nein"))
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
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
```

`@sample_code`

```{r}
hist(Gummibaerchen$Anzahl_Farben)
```

`@solution`

```{r}
hist(Gummibaerchen$Anzahl_Farben,main="Histogramm Anzahl Gummibaerchen",xlab="Anzahl",ylab="Haeufigkeit")
```

`@sct`

```{r}
test_error()
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
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
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
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
plot(Gummibaerchen$Anzahl_Baeren,Gummibaerchen$Anzahl_Farben)
```

`@sct`

```{r}
test_mc(3,feedback_msgs = c("Nein, alles korrekt.","Doch, das hat geklappt","Das ist der Grund!","R passt die Skalierung in der Regel automatisch an."))
```

---

## Streudiagramm Interpretation

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: c22157ee7b   
```


Bei diesen wenigen Datenpunkten braucht man eine größere Stichprobe, um einen Zusammenhang zu bestätigen oder zu widerlegen. Wir werden später auf Zusammenhänge d.h. Korrelationen zurückkommen. Einfache positive oder negative Zusammenhänge könnte man mit 'Je mehr, desto mehr' oder 'Je mehr, desto weniger' beschreiben. Wenn ein Zusammenhang in Frage käme, dann wäre das welcher?


`@hint`
Stelle dir eine angenäherte Gerade durch die Mitte der Punkte vor. In welche Richtung zeigt sie? Eher nach oben, in die positive Richtung, oder eher nach unten, in die negative Richtung?

`@possible_answers`
- [Je mehr, desto mehr]
- Je mehr, desto weniger

`@feedbacks`
- Ja, richtig, die Vermutung liegt nahe, dass wir bei mehr Bären in der Packung auch eine größere Vielfalt an Farben vorfinden.
- Nein, genau anders herum.

---

## Kreisdiagramm

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: 240a1641ce   
```


Du siehst ein Kreisdiagramm. Es eignet sich, um die Zusammensetzung von etwas aufzuzeigen. In diesem Fall zeigt es die durchschnittliche Zusammensetzung (in Prozent) von Gummibärchenfarben in einer Tüte. Was ist an diesem Kreisdiagramm ungünstig, sodass man eher von dieser Diagrammart absehen sollte?


`@instructions`
- Die Farbwahl
- Die Anzahl der Kategorien (hier die verschiedenen Farben)
- Die Position der Legende
- Die Hintergrundfarbe

`@hint`
Es gibt einen Punkt, den man aufgrund der Daten nicht verändern kann, weil der davon abhängig ist.

`@pre_exercise_code`

```{r}
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
library(ggplot2)
library(reshape2)
library(tibble)
library(magrittr)
Farben_Mean <- Gummibaerchen[,2:7] %>% colMeans()  %>% 
  prop.table() %>% 
  melt() %>% 
  rownames_to_column()

baeren_colors <- c("#8B0000", "#ff0000", "#ff9900","#ffd700","#32cd32","#ffffff")
source("https://assets.datacamp.com/production/repositories/3196/datasets/801e4015d0381e190aaccd014017fb702389287b/gummibaeren_verteilung_kreis.R")
```

`@sct`

```{r}
test_mc(2,feedback_msgs = c("Nein","Diese Art der Grafik ist ungünstig, weil wir sehr viele Kategorien haben, die 
  alle ähnlich groß sind. Es ist mit dem Auge schwer zu sehen, ob nun die grünen oder die 
  roten Gummibärchen im Mittel häufiger vorkommen.","Nein","Nein"))
```

---

## Balkendiagramm

```yaml
type: TabExercise 
xp: 100 
key: c2727a0fc7   
```


Diese Art der Grafik ist ungünstig, weil wir sehr viele Kategorien haben, die alle ähnlich groß sind. Es ist mit dem Auge schwer zu sehen, ob nun die grünen oder die roten Gummibärchen im Mittel häufiger vorkommen. Kreisdiagramme sind nur in wenigen Fällen wirklich sinnvoll. Sie eignen sich bei wenigen Ausprägungen einer Variable wie z.B. bei Geschlecht. Wenn du ein einfaches Kreisdiagramm erstellen möchtest, schau dir die Funktion `pie()` an. Besser eignet sich hier ein Balkendiagramm.


`@pre_exercise_code`

```{r}
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
library(ggplot2)
library(reshape2)
library(magrittr)
Farben_Mean <- Gummibaerchen[,2:7] %>% colMeans()  %>% 
  prop.table() %>% 
  melt() %>% 
  rownames_to_column()
```

***



```yaml
type: NormalExercise 
xp: 25 
key: 855960165b   
```





`@instructions`
Erstelle mit denselben Daten, die auch für das Kreisdiagramm verwendet wurden, ein Balkendiagramm. Die Daten sind in `Farben_Mean`gespeichert. Benutze `barplot()`. Gib `Farben_Mean$value` als erstes Argument an.

`@hint`


`@sample_code`

```{r}

```


`@solution`

```{r}
barplot(Farben_Mean$value)
```

`@sct`

```{r}
test_error()
test_function("barplot")
success_msg("Toll gemacht!")
```


***



```yaml
type: NormalExercise 
xp: 25 
key: a53109b722   
```





`@instructions`
Die einzelnen Balken zeigen nun die Höhe der einzelnen Mittelwerte der verschiedenen Farben. Um die Balken den Farben zuzuordnen, müssen wir einen weiteren Parameter angeben und zwar `names.arg` mit `Farben_Mean$rowname`. Mach das mal.

`@hint`


`@sample_code`

```{r}

```


`@solution`

```{r}
barplot(Farben_Mean$value, names.arg=Farben_Mean$rowname)
```

`@sct`

```{r}

```



***



```yaml
type: MultipleChoiceExercise 
xp: 25 
key: f464bb627c   
```





`@instructions`
- [Gelb]
- Grün
- Rot
- Orange

`@hint`
Mit diesem Balkendiagramm kannst du nun schön vergleichen, welche Farbe im Mittel 
  am häufigsten in den Tütchen vorhanden war. Welche Farbe ist das?

In welcher Maßeinheit ist die y-Achse?

`@sct`

```{r}

```



***



```yaml
type: NormalExercise 
xp: 25 
key: fb552b8c00   
```





`@instructions`
Ein wenig Farbe wäre sinnvoll, um den Inhalt des Balkendiagramms schneller erfassen zu können. Gib zusätzlich noch `col=baeren_colors` als Argument ein.

`@hint`
Einmal Pfeiltaste nach oben und du erhältst das zuvor eingegebenen Kommando. Nun füge das Attribut, wie in der Frage beschrieben ans Ende dazu.

`@sample_code`

```{r}

```


`@solution`

```{r}
barplot(Farben_Mean$value, names.arg=Farben_Mean$rowname, col=baeren_colors)
```

`@sct`

```{r}

```



---

## Boxplot

```yaml
type: NormalExercise 
xp: 100 
key: a2b485ad08   
```


Wir haben nun gesehen, wie wir die Verteilung einer Variable plotten können, wie wir die Verteilung zweier Variablen in Beziehung setzen und entsprechend plotten können. Einfache Kreisdiagramme eignen sich bei wenigen Ausprägungen um die Zusammensetzung einer Variable zu zeigen. Balkendiagramme dagegen eignen sich für den Vergleich von Häufigkeiten einer nominalskalierten Variable oder auch den Vergleich von Mittelwerten.

> Einen wichtigen Plot solltet ihr noch kennen... 

den Boxplot. Er gibt ebenso Auskunft über die Verteilung und Lage von Variablen. Er zeigt den Median, das untere und obere Quantil (25 und 75 Prozent) und die Ausreißer.


`@instructions`
Teste den Befehl `boxplot` mit einer Variablen aus dem Datenset `Gummibaerchen`.

`@pre_exercise_code`

```{r}
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
```

`@solution`

```{r}
boxplot(Gummibaerchen$Anzahl_Baeren)
```

`@sct`

```{r}
test_error()
test_function("boxplot")
success_msg("Mit einer Variablen nutzen wir noch nicht die ganze Funktion von boxplot. 
  Wir werden später nochmal auf den Boxplot zurückkommen. Teste gerne die gezeigten Funktionen nochmal selbst!")
```
