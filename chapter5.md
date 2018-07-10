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
xp: 35 
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
xp: 35 
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







***



```yaml
type: NormalExercise 
xp: 30 
key: 09f55661b5   
```



`@instructions`
Du siehst, dass das Histogramm symmetrisch ausschaut. Das Histogramm kann allerdings nur ein Indiz sein. Mit shapiro.test() kannst du überprüfen, ob es sich tatsächlich um eine Normalverteilung handelt. Der p-Wert sollte größer als 0.05 sein. Prüfe auf Normalverteilung.

`@hint`
Benutze `shapiro.test()` und übergib der Funktion unsere Normalverteilung `nv`


`@sample_code`

```{r}

```

`@solution`

```{r}
shapiro.test(nv)
```
`@sct`

```{r}
success_msg("Es handelt sich, wie vermutet, um eine Normalverteilung.")
```







---
## Shapiro-Wilk-Test

```yaml
type: NormalExercise 
xp: 100 
key: 056b27e418   
```

Wir haben nun Daten mit der durchschnittlichen Anzahl der Sonnenflecken zwischen 1749 und 1983 pro Monat. Der Datensatz ist aus dem Paket `datasets`, das normalerweise mit R installiert wird. Du kannst also einfach mit `sunspots` auf den Datensatz zugreifen, auch wenn du ihn in deiner Arbeitsumgebung (Fenster oben rechts mit den Variablen) nicht sehen kannst.

`@instructions`
Prüfe diese Daten auf Normalverteilung.

`@hint`
Benutze `shapiro.test()` wie zuvor auch

`@pre_exercise_code`

```{r}

```

`@sample_code`

```{r}

```

`@solution`

```{r}
shapiro.test(sunspots)
```
`@sct`

```{r}

```







---
## Normalverteilt oder nicht?

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 044d736c05   
```

Der p-Wert liegt bei 2.2*10^-16 und das bedeutet ...


`@hint`
*10^-16 bedeutet, dass das Komma um 16 Stellen nach links verschoben wird. Wir erhalten eine seeehr kleine Zahl.





`@possible_answers`
- ...es liegt eine Normalverteilung vor
- [...es liegt keine Normalverteilung vor]

`@feedbacks`
- Nein
- Richtig, wir haben keine Normalverteilung vorliegen



