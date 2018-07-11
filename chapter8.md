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
test_mc("Ja, richtig, sie sind sind intervallskaliert.","Nein")
```




