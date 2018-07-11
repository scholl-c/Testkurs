---
  title: "Funktionen und Schleifen"

---
## Alle Spalten mit colMeans

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





