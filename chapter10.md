---
  title: "Grafiken mit ggplot2"
  description: "Im ersten Teil hast du gelernt, wie du einfache Plots erstellen kannst. In diesem zweiten Teil wirst du lernen, wie du mit der Bibliothek ggplot2 Grafiken erstellst. Dies ist eine Bibliothek mit mehr Möglichkeiten in einfacher Art und Weise die Daten darzustellen."

---
## Paket laden

```yaml
type: NormalExercise 
xp: 100 
key: 38f9cedf15   
```

Wenn du eine Bibliothek verwenden möchtest, musst du sie erst laden. Das kannst du z.B. mit dem Befehl `library()`. In den Klammern hinter `library` steht der Name des Pakets. In dieser Lektion werden wir das für dich tun. Wenn du außerhalb dieser Lektion R-Code mit den hier verwendeten Befehlen ausführen willst, solltest du die entsprechenden Bibliotheken laden! Wenn du dir nicht sicher bist, welches Paket du laden musst, kannst du in der Hilfe  nach dem Befehl, den du benutzen möchtest, suchen und siehst, entweder in geschweiften Klammern hinter den Befehl auf einer Hilfeseite oder falls mehrere Befehle gefunden werden, die zu deiner Suchanfrage passen, vor den doppelten Doppelpunkten den Paketnamen.

`@instructions`
Lade das Paket `ggplot2`.

`@hint`
Gib `?library` ein.

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







---
## Histogramm mit ggplot2

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: b54e584970   
```

Auch mit `ggplot2` können wir ein Histogramm plotten. Ein Histogramm veranschaulicht die/den ... von Daten?


`@hint`
Was wird in der Regel auf der y-Achse eines Histogramms gemessen?





`@possible_answers`
- [Verteilung]
- Beziehung
- Zusammensetzung
- Vergleich

`@feedbacks`
- Genau!
- Nein
- Nein
- Nein





---
## Histogramm plotten

```yaml
type: NormalExercise 
xp: 100 
key: 7d6d299a32   
```

Nun werden wir dieses Histogramm plotten mit `ggplot2`. In der vorherigen Lektion hast du gelernt, wie wir das mit dem einfachen Befehl `hist()` schon können. In `ggplot2` besteht ein einfacher Befehl aus drei Dingen. 

- Erstens, der Angabe mit welchem Datensatz du arbeitest. 
- Zweitens, welche Variablen geplottet werden sollen. Bei mehreren Variablen wird auch die Angabe auf welche 
  Achse jeweils welche Variable gelegt wird benötigt. 
- Drittens, **wie** die Daten geplottet werden sollen, also z.B. als Histogramm, als Balken, als Linien oder als Punkte. 

Für unser Histogramm reicht die Angabe eines Datensatzes und einer Variablen. Denn bei der Form eines Histogramms ist festgelegt, dass die y-Achse die Häufigkeit der Vorkommen der einzelnen Ausprägungen angibt. Zusätzlich geben wir `geom_histogram()` als dritten Bestandteil an.

`@instructions`
Wir möchten wieder wissen, wie häufig einzelne Farben in verschiedenen Packungen vorkommen. Der Befehl durch `ggplot` eingeleitet und wir übergeben Gummibaerchen als unser Dataframe. Als zweites Argument geben wir die Variablen an, die wir plotten möchten. Das zweite Argument ist jedoch eingerahmt in `aes()`, was die Abkürzung für '_aesthetics_' ist. Dann müssen wir noch spezifizieren, dass wir diese Daten in Form eines Histogramms anzeigen möchten. Dieser Teil wird eingeleitet durch ein + und die entsprechende Form wie z.B. `geom_histogram()`. Zusätzlich setzen wir den Parameter `binwidth` auf 1. Das steuert die Balkenbreite. Damit es für dich leichter ist, gebe ich dir hier eine Vorlage, die du anpassen musst... `ggplot(dataframe,aes(variable))+geom_histogram(binwidth=20)`

`@hint`
Bei der Vorlage ersetzt du `dataframe`, `variable` und `20` durch die im Text angegebenen Daten.

`@pre_exercise_code`

```{r}
library(ggplot2)
Gummibaerchen <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
ggplot(Gummibaerchen,aes(Anzahl_Farben))+geom_histogram(binwidth=1)
```
`@sct`

```{r}

```







---
## Insert exercise title here

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: d32a267b1a   
```

Was können wir gut durch ein Streudiagramm darstellen?


`@hint`
Denke auch hier daran, wie die Achsen belegt sein werden.





`@possible_answers`
- Verteilung einer Variable
- [Verteilung zweier Variablen]
- Zusammensetzung einer Variablen

`@feedbacks`
- Nein
- Richtig!
- Nein



