---
  title: "Test auf Zusammenhänge"

---
## Skalenniveau der Variablen

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: f4519250ed   
```

Wir haben den pro Kopf Konsum von Schokoladentafeln im Jahr und den IQ von Personen erhoben. (Jede Zeile = eine Person) Diese Daten liegen in dem Datensatz `choco` mit den Spaltennamen 'Tafeln' und 'IQ'. Schaue dir einen Ausschnitt der Daten an. Benutze dafür die Funktion `head(choco)`.

Wir können also beispielsweise sagen, dass die erste Person 39 Tafeln Schokolade im Jahr verspeist und einen IQ von 83 hat. Es handelt sich um fiktive Daten, keine echte Erhebung. Trotzdem wollen wir die beiden Variablen korrelieren, um zu sehen, ob es einen statistischen Zusammenhang gibt.

Erfüllen beide Variablen die Voraussetzung der Intervallskaliertheit?

`@instructions`
- [Ja]
- Nein

`@hint`
Auf welchem Skalenniveau sind die Anzahl an verspeisten Schokoladentafel und der Intelligenzquotient?

`@pre_exercise_code`

```{r}
choco <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8fabac37c6b40b6274b29eba130b53d8c7e70b8/choco.csv")
```


`@sct`

```{r}
test_mc(1,"Ja, richtig, sie sind sind intervallskaliert.","Nein")
```






---
## Insert exercise title here

```yaml
type: TabExercise 
xp: 100 
key: a0ecb44b50   
```

Die Zusammenhänge (**Korrelationen**), die wir im Folgenden berechnen, beziehen sich nur auf die Zusammenhänge von zwei Variablen. Zwei Dinge beschreiben den Zusammenhang - die Stärke und die Form. Die Korrelationskoeffizienten nach Pearson oder Spearman beschreiben die **Stärke des Zusammenhangs**. Sie erkennen allerdings ausschließlich lineare Zusammenhänge. Reine lineare Zusammenhänge sind in 'Je mehr... desto mehr' oder 'Je mehr ... desto weniger' Phrasen zu beschreiben. Die einfachste Form des Zusammenhangs (Regression) ist der lineare Zusammenhang. Mit einer Regressionsanalyse kann man versuchen, Voraussagen zu treffen.



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
key: 07a7ae480e   
```



`@instructions`
Mit der Funktion plot() können wir uns ein Streudiagramm ausgeben lassen. Anhand des Streudiagramms kann man schon leicht erkennen, ob eine Korrelation vorliegen könnte bzw. ob es sich um eine positive oder negative Korrelation handelt.

`@hint`
Die beiden Variablen 'Tafeln' und 'IQ' müssen der Funktion plot() übergeben werden.


`@sample_code`

```{r}

```

`@solution`

```{r}
plot(choco$Tafeln,choco$IQ)
```
`@sct`

```{r}

```








***



```yaml
type: MultipleChoiceExercise 
xp: 50 
key: a89391793a   
```



`@instructions`
Handelt es sich vermutlich eher um eine positive oder negative Korrelation? Die 
  positive Korrelation wäre 'Je höher der Schokoladentafelkonsum im Jahr, desto höher auch 
  der IQ' und eine negative Korrelation 'Je höher der Schokoladentafelkonsum im Jahr, desto 
  geringer der IQ'.

`@hint`





`@sct`

```{r}

```






