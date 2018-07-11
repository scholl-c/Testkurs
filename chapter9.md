---
  title: "Funktionen und Schleifen"

---
## Durchschnitt aller Spalten

```yaml
type: NormalExercise 
xp: 100 
key: 1727563e05   
```

Wir arbeiten zunächst mit dem Datensatz `cars` aus dem Paket `datasets`. Das sind Daten aus den 1920er Jahren, die die Geschwindigkeit und den Bremsweg von Autos enthalten. Wir möchten wissen, was die durchschnittliche Geschwindigkeit (in Meilen pro Stunde) und der durchschnittliche Bremsweg (in _feet_) ist. Die beiden Variablen sind jeweils in den Spalten `speed` und `dist` festgehalten. 

`@instructions`
Berechne die Durchschnittswerte, in dem du den Datensatz an `colMeans()` übergibst.

`@hint`
Da du den Durchschnitt der einzigen beiden Spalten berechnen möchtest, musst du keine Spalten extra spezifieren, sondern übergibst den Datensatz als solches.

`@pre_exercise_code`

```{r}
library(datasets)
```
`@sample_code`

```{r}

```

`@solution`

```{r}
colMeans(cars)
```
`@sct`

```{r}

```







---
## Summe aller Spalten

```yaml
type: NormalExercise 
xp: 100 
key: 01dd6ee727   
```

Die Funktion erspart dir also, das per einzelne Befehle zu berechnen. Möchtest du nur eine bestimmte Spalte berechnen, kannst du dies zum Beispiel mit `colMeans(cars$dist)` oder auch `colMeans(cars[,c('speed','dist')])` angeben. Eine andere Funktion, die analog wie `colMeans()` funktioniert, nennt sich `colSums()`. Damit kannst du die Summe der Spalten berechnen. 

`@instructions`
In diesem Beispiel macht das wenig Sinn, aber wir machen das trotzdem mal. Benutze `colSums()` und berechne somit die Summe der Bremswege und Geschwindigkeiten (macht keinen Sinn!)

`@hint`
Benutze `colSums()` wie du im vorherigen Beispiel `colMeans()` benutzt hast

`@pre_exercise_code`

```{r}
library(datasets)
```
`@sample_code`

```{r}

```

`@solution`

```{r}
colSums(cars)
```
`@sct`

```{r}
success_msg("Damit hast du jetzt zwei sehr einfache Funktionen kennengelernt, die dir sehr viel Arbeit ersparen können. Es gibt auch die Möglichkeit, das auf Zeilen auszuführen, siehe dazu rowMeans() und rowSums().")
```






---
## Modus

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 62397fee04   
```

Was berechnet der Modus?


`@hint`
Was vermutest du aufgrund des Ergebnisses in der vorherigen Frage? Welche Antwortmöglichkeit kannst du dadurch ausschließen?





`@possible_answers`
- [Den häufigsten Wert einer Zahlenreihe]
- Den mittleren Wert einer sortierten Zahlenreihe
- Den größten Wert einer Zahlenreihe

`@feedbacks`
- Ja!
- Nein
- Nein





---
## Eigene Funktion auf alle Spalten anwenden

```yaml
type: NormalExercise 
xp: 100 
key: e1f00c619a   
```

Vielleicht möchtest du abseits von Summe oder arithmetischem Mittelwert noch den Median oder Modus der verschiedenen Spalten berechnen? Vielleicht möchtest du auch etwas ganz anderes mit jeder Spalte machen? Kein Problem! Deine Individualität kannst du ausleben, in dem du eine kleine Funktion schreibst und mit `lapply` auf die Spalten des Datensatzes anwendest.

Nun möchtest du den Modus für jede Spalte berechnen. `lapply()` wendet eine Funktion auf die Spalten eines Datensatzes, oder wenn keine Spalten spezifiziert wurden auf alle Spalten eines Datensatzes an. Du kannst `lapply()` nach dieser Vorlage benutzen: `lapply(datensatz,funktion)` 

`@instructions`
Berechne damit den Modus für alle Spalten in `cars`. Die Funktion namens `Mode`, die den Modus berechnet, stellen wir dir bereit.

`@hint`
Du musst keine Spalten spezifizieren und verwende unsere Funktion namens `Mode`

`@pre_exercise_code`

```{r}
library(datasets)
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
```
`@sample_code`

```{r}

```

`@solution`

```{r}
lapply(cars,Mode)
```
`@sct`

```{r}

```







---
## Alternative sapply

```yaml
type: NormalExercise 
xp: 100 
key: 82e4778553   
```

Alternativ kannst du auch `sapply()` nutzen. Der einzige Unterschied liegt in der Ausgabe. 

`@instructions`
Sieh dir das an, in dem du analog zum vorherigen Beispiel statt `lapply()` `sapply()` anwendest.

`@hint`


`@pre_exercise_code`

```{r}
library(datasets)
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
```
`@sample_code`

```{r}

```

`@solution`

```{r}
sapply(cars,Mode)
```
`@sct`

```{r}

```





