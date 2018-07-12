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
nv <- rnorm(200,30)
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
test_student_typed("hist(nv)",not_typed_msg="Nicht ganz.")
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





---
## Schiefe

```yaml
type: NormalExercise 
xp: 100 
key: c7922eadc3   
```

Wenn wir keine Normalverteilung vorliegen haben, dürfen wir daher einige parametrische Tests nicht rechnen. Wenn die Verteilung nicht normalverteilt ist, gibt es Eigenschaften, die diese Verteilung beschreiben können. Dazu gehört die Schiefe (engl. skewness) der Verteilung, sowie die Wölbung (engl. kurtosis) der Verteilung. In dem Paket `moments` gibt es zwei entsprechende Funktionen dafür. Bei einer Normalverteilung liegen beide Werte bei 0. 

Normalverteilte Daten bzw. symmetrische Verteilungen haben eine Schiefe um die 0. Linksschiefe Verteilungen haben eine Schiefe von kleiner 0 und rechtsschiefe Verteilungen entsprechend eine Schiefe größer 0.

`@instructions`
Berechne beispielhaft die Schiefe von `sunspots` mit `skewness()`.

`@hint`


`@pre_exercise_code`

```{r}
library(moments)
```
`@sample_code`

```{r}

```

`@solution`

```{r}
skewness(sunspots)
```
`@sct`

```{r}

```







---
## Schiefe von sunspots

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: b55032df18   
```

Die Verteilung von `sunspots` ist ...


`@hint`
Für linksschiefe Verteilungen liefert `skewness` einen Wert kleiner Null, für rechtsschiefe Verteilungen einen Wert größer Null. Der Wert von `skewness(sunspots)` ist 1.1003





`@possible_answers`
- linksschief
- normalverteilt
- [rechtsschief]

`@feedbacks`
- Nein
- Nein
- Wenn wir keine Normalverteilung vorliegen haben, können wir verteilungsfreie bzw. non-parametrische Tests nutzen. Alternativ kann man versuchen, die Daten in eine annähernde Normalverteilung zu transformieren. Man kann das z.B. mit dem Logarithmus (log) oder der Wurzel (sqrt) versuchen. Erreicht man eine Normalverteilung (mit Test überprüfen!) darf man mit diesen transformierten Daten parametrische Tests rechnen.





---
## Varianzhomogenität

```yaml
type: TabExercise 
xp: 100 
key: 725a51bcb9   
```

Die Varianzhomogenität ist ebenfalls eine wichtige Voraussetzung, ohne diese man einige der Tests nicht rechnen sollte. Es wird geprüft, ob die Varianzen der Populationen aus denen wir Stichproben vorliegen haben, homogen sind, d.h. etwa gleich sind. Wir können das mit dem Levene-Test prüfen. Die Funktion `leveneTest()` in dem Paket `car` gibt und dazu den p-Wert aus. Ist der p-Wert größer als 0.05 können wir Varianzhomogenität annehmen.

Da die Varianzhomogenität jetzt Varianzen aus verschiedenen Gruppen vergleicht und wir keine Eigenschaften einer Verteilung untersuchen, kann man den Levene-Test nicht auf der Messreihe der `sunspots` anwenden! Wir benutzen nun den Datensatz `InsectSprays`. Es wurde die Anzahl von Insekten auf Versuchsfeldern gemessen, die jeweils mit verschiedenen Insektiziden behandelt wurden. Die Spalte `spray` indiziert, welches Spray (A-F) genutzt wurde und die Spalte `count` enthält die Anzahl der Insekten.



`@pre_exercise_code`

```{r}
library(car)
```








***



```yaml
type: NormalExercise 
xp: 50 
key: 53f04ed4ac   
```



`@instructions`
Berechne die Homogenität der Varianzen der verschiedenen Spray-Gruppen. Benutze dazu `leveneTest()` und übergib als erstes Argument die Spalte `count` und als zweites Argument die Spalte `spray`.

`@hint`



`@sample_code`

```{r}

```

`@solution`

```{r}
leveneTest(InsectSprays$count,InsectSprays$spray)
```
`@sct`

```{r}
test_error()
test_output_contains("leveneTest(InsectSprays$count,InsectSprays$spray)",incorrect_msg="Leider falsch")
success_msg("Super!")
```







***



```yaml
type: MultipleChoiceExercise 
xp: 50 
key: faf6c8771b   
```



`@instructions`
Varianzhomogenität liegt ...

`@hint`
Ist der Wert p-Wert (hier Pr(>F)) größer als 0.05, dann nehmen wir Varianzhomogenität an.




`@sct`

```{r}

```






