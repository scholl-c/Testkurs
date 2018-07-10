---
  title: "Voraussetzungen für statistische Tests"
  v2: true

---
## Normalverteilung

```yaml
type: TabExercise 
lang: r
xp: 100 
key: f590749fec   
```

Für statistische Tests gibt es Voraussetzungen. Das ist in etwa so, wie wenn jemand Übergewicht hat und einen Marathon laufen möchte. Er sollte sich einem Gesundheits- und Belastungstest unterziehen, um Risiken auszuschließen. So müssen auch die Verteilungen von Variablen bestimmte Voraussetzungen erfüllen, um mit ihnen später weitere Tests durchführen zu können und Aussagen treffen zu können - oder im übertragenen Sinn eine Marathon zu finishen.

Eine sehr wichtige Voraussetzung ist oft die Normalverteilung. Dies kann man mit dem **Shapiro-Wilk-Test** überprüfen. Ist der p-Wert (p-value) größer als 0.05 sind die Daten normalverteilt.



`@pre_exercise_code`

```{r}

```

`@sample_code`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 50 
key: 4cf70b1d63   
```



`@instructions`
Mit `rnorm()` kannst du dir eine Reihe von Werten erzeugen, die normalverteilt sind. Erzeuge eine Variable `nv` und speichere darin die normalverteilten Werte. Gib `nv <- rnorm(200,30)` ein.

`@hint`




`@solution`

```{r}
nv <- rnorm(200,30)
```
`@sct`

```{r}
test_error()
test_object("nv")
success_msg("Guter Anfang!")
```







***



```yaml
type: NormalExercise 
xp: 50 
key: 6c987915ec   
```



`@instructions`
Das Histogramm stellt die Verteilung graphisch dar. Zeichne das Histogramm von der Verteilung der Werte in `nv`.

`@hint`
Benutze `hist()`



`@solution`

```{r}
hist(nv)
```
`@sct`

```{r}
test_error()
test_student_typed("hist(nv"),not_typed_msg="Nicht ganz.")
success_msg("Genau so sieht das Histogramm aus!")
```





