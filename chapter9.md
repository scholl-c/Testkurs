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




