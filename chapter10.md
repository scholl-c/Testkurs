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
library(ggplot2)
```

`@sct`

```{r}
ex() %>% check_library("ggplot2",incorrect_msg="Nicht ganz",not_called_msg="Lies dir nochmal die Aufgabenstellung durch.")
success_msg("Sehr gut!")
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
- Zweitens, welche Variablen geplottet werden sollen. Bei mehreren Variablen wird auch die Angabe, auf welche 
  Achse jeweils welche Variable gelegt wird, benötigt. 
- Drittens, **wie** die Daten geplottet werden sollen, also z.B. als Histogramm, als Balken, als Linien oder als Punkte. 

Für unser Histogramm reicht die Angabe eines Datensatzes und einer Variablen. Denn bei der Form eines Histogramms ist festgelegt, dass die y-Achse die Häufigkeit der Vorkommen der einzelnen Ausprägungen angibt. Zusätzlich geben wir `geom_histogram()` als dritten Bestandteil an.


`@instructions`
Wir möchten wieder wissen, wie häufig einzelne Farben in verschiedenen Packungen vorkommen. Der Befehl durch `ggplot` eingeleitet und wir übergeben Gummibaerchen als unser Dataframe. Als zweites Argument geben wir die Variablen an, die wir plotten möchten. Das zweite Argument ist jedoch eingerahmt in `aes()`, was die Abkürzung für '_aesthetics_' ist. Dann müssen wir noch spezifizieren, dass wir diese Daten in Form eines Histogramms anzeigen möchten. Dieser Teil wird eingeleitet durch ein + und die entsprechende Form wie z.B. `geom_histogram()`. Zusätzlich setzen wir den Parameter `binwidth` auf 1. Das steuert die Balkenbreite. Damit es für dich leichter ist, gebe ich dir hier eine Vorlage, die du anpassen musst... `ggplot(dataframe,aes(variable))+geom_histogram(binwidth=20)`

`@hint`
Bei der Vorlage ersetzt du `dataframe`, `variable` und `20` durch die im Text angegebenen Daten.

`@pre_exercise_code`

```{r}
library(ggplot2)
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
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
ex() %>% {
  check_function(.,"ggplot") %>% check_arg("data") %>% check_equal(incorrect_msg="Nicht ganz")
  check_function(.,"aes") %>% check_arg(.,"x") %>% check_equal(eval=FALSE)
  check_function(.,"geom_histogram") %>% check_arg(.,"binwidth") %>% check_equal(eval=FALSE)
}
```

---

## Streudiagramm mit ggplot2

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

---

## Streudiagramm plotten

```yaml
type: NormalExercise 
xp: 100 
key: f3bf2f5e9d   
```


Sofern du das Prinzip von `ggplot` verstanden hast, dürfte es nicht schwer für dich sein, das Streudiagramm von `Anzahl_Farben` und `Anzahl_Baeren` zu plotten. Im Unterschied zu dem Histogramm, haben wir nun zwei Variablen, die wir an die Achsen binden. Wir legen also fest, dass `Anzahl_Farben` an die x-Achse und `Anzahl_Baeren` an die y-Achse gebunden werden soll. Das Streudiagramm zeigt im einfachsten Fall eine Vielzahl von Punkten. Also wählen wir für die Darstellung `geom_point()`.


`@instructions`
Plotte das Streudiagramm. Auch für diesen Fall gebe ich dir eine Vorlage... `ggplot(dataframe,aes(x=variable1,y=variable2))+geom_point()`

`@hint`
Ersetze _dataframe_, _variable1_ und _variable2_. Achte auf die richtige Zuweisung der Variablen zur x und y-Achse.

`@pre_exercise_code`

```{r}
library(ggplot2)
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
```

`@sample_code`

```{r}

```


`@solution`

```{r}
ggplot(Gummibaerchen,aes(x=Anzahl_Farben,y=Anzahl_Baeren))+geom_point()
```

`@sct`

```{r}
ex() %>% {
  check_function(.,"ggplot") %>% check_arg("data") %>% check_equal()
  check_function(.,"aes") %>% {
    check_arg(.,"x") %>% check_equal(eval=FALSE)
    check_arg(.,"y") %>% check_equal(eval=FALSE)
  }
  check_function(.,"geom_point")
}
```

---

## Achsenbeschriftung in ggplot2

```yaml
type: NormalExercise 
xp: 100 
key: b3cf321d71   
```


Um die Grafik verständlicher zu gestalten, können wir Achsenbeschriftungen und einen Titel hinzufügen. Das können wir mit der Spezifikation von `ggtitle()`, `xlab()` und `ylab()`. Diese hängen wir mit einem Plus an den `ggplot`-Befehl an, so wie wir es z.B. auch bei `geom_point` gemacht haben. Es ist dabei kein Problem, wenn wir mehrere Dinge anhängen.


`@instructions`
Lass uns dem Streudiagramm Achsenbezeichnungen und einen Titel geben! Nenne die x-Achse _Anzahl Farben_ die y-Achse _Anzahl Bären_ und den Titel _Mein erstes Streudiagramm_ (auch in dieser Reihenfolge!). Die Benennungen müssen jeweils in Anführungszeichen gesetzt werden.

`@hint`
Es ist alles gesagt. Lies genau.

`@pre_exercise_code`

```{r}
library(ggplot2)
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
```

`@sample_code`

```{r}

```


`@solution`

```{r}
ggplot(Gummibaerchen,aes(x=Anzahl_Farben,y=Anzahl_Baeren))+geom_point()+xlab("Anzahl Farben")+ylab("Anzahl Bären")+ggtitle("Mein erstes Streudiagramm")
```

`@sct`

```{r}
ex() %>% {
  check_function(.,"ggplot") %>% check_arg("data") %>% check_equal()
  check_function(.,"aes") %>% {
    check_arg(.,"x") %>% check_equal(eval=FALSE)
    check_arg(.,"y") %>% check_equal(eval=FALSE)
  }
  check_function(.,"geom_point")
  check_function(.,"xlab")
  check_function(.,"ylab")
  check_function(.,"ggtitle")
}
```

---

## Balkendiagramm mit ggplot

```yaml
type: TabExercise 
xp: 100 
key: 957510df6b   
```


Wir erstellen nun ein Balkendiagramm mit `ggplot`. Wir möchten den Mittelwert der einzelnen Farben pro Tütchen plotten. Dafür sind einige Schritte Vorverarbeitung nötig.


`@pre_exercise_code`

```{r}
library(ggplot2)
library(reshape2)
library(readr)
Gummibaerchen <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8099a16ced9996e5bc9112d62c8bd47c97ae6bd/Gummibaerchen.csv")
Farben_Mean <- colMeans(Gummibaerchen[,2:7])
baeren_colors <- c("#8B0000", "#ffd700", "#32cd32","#ff0000","#ff9900","#ffffff")
```

***



```yaml
type: NormalExercise 
xp: 20 
key: 548942aef1   
```





`@instructions`
Wir wissen für jede Farbe, wie oft sie jeweils in den zwanzig einzelnen Tütchen vorkommt. Dies steht für jede Farbe in einer eigenen Spalte. Zunächst errechnen wir die Mittelwerte pro Spalte, d.h. wie oft kommt diese oder jene Farbe im Durchschnitt pro Tütchen vor. Wir können das mit der Funktion `colMeans()` berechnen. Dazu wählen wir alle Spalten mit Farbennamen aus, das sind Spalte 2 bis Spalte 7. Das Ergebnis speichern wir in `Farben_Mean`.

`@hint`
Wähle alle Spalten von 2 bis 7 aus. Das geht über [,2:7]

`@sample_code`

```{r}

```


`@solution`

```{r}
Farben_Mean <- colMeans(Gummibaerchen[,2:7])
```

`@sct`

```{r}
ex() %>% check_function("colMeans") %>% check_object("Farben_Mean") %>% check_equal()
```


***



```yaml
type: NormalExercise 
xp: 20 
key: e5abaf015b   
```





`@instructions`
`ggplot` braucht die Daten in einem bestimmten Format. Das erreichen wir oft über den Befehl `melt()` aus dem `reshape2`-Package. Wende den Befehl `melt()` auf `Farben_Mean` (und überschreibe damit `Farben_Mean`)

`@hint`


`@sample_code`

```{r}

```


`@solution`

```{r}
Farben_Mean <- melt(Farben_Mean)
```

`@sct`

```{r}
ex() %>% check_function("melt") %>% check_object("Farben_Mean") %>% check_equal()
```


***



```yaml
type: NormalExercise 
xp: 20 
key: e28bb21eeb   
```





`@instructions`
Es ist nun notwendig, dass wir die Namen der Zeilen, also z.B. 'dunkelrot' als eigene Spalte zur Verfügung haben, um diese Variable später an die x-Achse zu binden. Dazu verwenden wir den Befehl `rownames()` und nennen die Variable für die Zeilennamen `farben`. Versuch das mal.

`@hint`
Eine Variable erstellen kannst auf dem gleichen Weg, wie du eine auswählen kannst, d.h. über eckige Klammern.

`@sample_code`

```{r}

```


`@solution`

```{r}
Farben_Mean["farben"] <- rownames(Farben_Mean)
```

`@sct`

```{r}
ex() %>% check_object("Farben_Mean") %>% {check_column(.,"farben") %>% check_equal()} %>% check_equal()
```


***



```yaml
type: NormalExercise 
xp: 20 
key: 4e3d3ad736   
```





`@instructions`
Nun haben wir alle Vorbereitungen abgeschlossen und können das erste Balkendiagramm plotten. Dafür bekommst du wieder eine Vorlage, die du abändern sollst... `ggplot(dataframe,aes(x=variable1,y=variable2))+geom_col()`

`@hint`
Ersetze _dataframe_, _variable1_ und _variable2_.

`@sample_code`

```{r}

```


`@solution`

```{r}
ggplot(Farben_Mean,aes(x=farben,y=value))+geom_col()
```

`@sct`

```{r}
ex() %>% {
  check_function(.,"ggplot") %>% check_arg("data") %>% check_equal()
  check_function(.,"aes") %>% {
    check_arg(.,"x") %>% check_equal(eval=FALSE)
    check_arg(.,"y") %>% check_equal(eval=FALSE)
  }
  check_function(.,"geom_col")
}
```


***



```yaml
type: NormalExercise 
xp: 20 
key: 5fad3ed520   
```





`@instructions`
Nun sind `ggplot`-Grafiken nicht immer schwarz-weiß, sondern in schönen Farben möglich. Dazu haben wir bereits einen Vektor `baeren_colors` mit Farbcodes vorliegen. Wenn wir die Balken einfärben möchten, können wir das über den Parameter `fill` in `geom_col()` tun. Weise `fill` die `baeren_colors` zu.

`@hint`
Momentan sind in `geom_col()` noch keine Parameter angegeben. Füge `fill=baeren_colors` hinzu.

`@sample_code`

```{r}

```


`@solution`

```{r}
ggplot(Farben_Mean,aes(x=farben,y=value))+geom_col(fill=baeren_colors)
```

`@sct`

```{r}
ex() %>% {
  check_function(.,"ggplot") %>% check_arg("data") %>% check_equal()
  check_function(.,"aes") %>% {
    check_arg(.,"x") %>% check_equal(eval=FALSE)
    check_arg(.,"y") %>% check_equal(eval=FALSE)
  }
  check_function(.,"geom_col") %>% check_arg("fill") %>% check_equal()
}
success_msg("Du hast nun noch längst nicht alles gesehen. Auch einen Boxplot kannst du mit geom_boxplot() erstellen, oder Linienplot mit geom_line().")
```

