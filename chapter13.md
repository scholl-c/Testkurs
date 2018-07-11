---
  title: "Umfragen analysieren"

---
## Forschungsfrage

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: ffc25f3e03   
```

Wir haben bisher immer mit Daten begonnen, aber eigentlich beginnt die Reise in die Statistik mit einer Forschungsfrage. An welcher Eigenschaft erkennst du eine Forschungsfrage?


`@hint`
Man kann Forschungsfragen auch mehrmals bearbeiten z.B. bezogen auf verschiedene Stichproben. Sie muss ergebnisoffen sein, es ist also nicht von Anfang an klar, wie sie beantwortet werden muss.





`@possible_answers`
- [Sie ist mit wissenschaftlichen Methoden überprüfbar]
- Sie ist vage formuliert
- Niemand hat sich diese Frage bisher gestellt
- Sie kann nicht widerlegt werden

`@feedbacks`
- Genau!
- Hoffentlich nicht!
- Das ist kein ausreichendes Kriterium
- Falsch





---
## Daten eingelesen

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: e279260763   
```

Wenn du eine Forschungsfrage entwickelt hast, kannst du selbst eine Studie durchführen oder bereits erhobene Daten nutzen. Nun ist es wichtig, sich über die spätere Struktur (und Format) der Daten Gedanken zu machen. Welche Daten sollen erhoben werden? In welchem Format liegen die Daten dann zur Auswertung vor? Es widerstrebt der wissenschaftlichen Praxis die Forschungsfrage erst nach der Auswertung von Daten festzulegen.

Wenn man dann die Daten vorliegen hat, kann angefangen werden, auszuwerten. Wir haben Daten zur beruflichen Situation, Bildung und Zufriedenheit von in Deutschland lebenden Personen vorliegen. Hat man sich vorher Gedanken über die Forschungsfragen gemacht und wie man sie beantworten möchte, welche Daten man benötigt, etc., kann man nun die Daten aufbereiten für die Analyseschritte.

Nun haben wir unsere Daten eingelesen und wie geht es weiter?


`@hint`






`@possible_answers`
- Statistische Kennwerte ausgeben lassen
- Skalenniveau bestimmen
- Häufigkeiten berechnen
- [Daten bereinigen]

`@feedbacks`
- Ja auch, aber nicht als nächster Schritt
- Gute Idee, aber die sollte man bereits vor der Erhebung wissen
- Ja auch, aber nicht als nächster Schritt
- Genau!





---
## Datenanalyse

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: 5be53d83dd   
```

Schau dir die erhobenen Daten in `Umfragedaten` an. Ist `na.omit(Umfragedaten)` hier nötig?

`@instructions`
- Ja
- [Nein]

`@hint`


`@pre_exercise_code`

```{r}
Umfragedaten <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/326619bab6bb5d58bead12aa4403a2103f2cddcf/Umfragedaten.csv")
```


`@sct`

```{r}
- Falsch
- Richtig, wir schließen so zu viele Personen aus. Auch wenn die Personen nur einen Teil der Angaben gemacht haben, können wir sie in den entsprechenden Analysen noch einbeziehen.
```






---
## Häufigkeiten

```yaml
type: NormalExercise 
xp: 100 
key: 6acc5548f0   
```

Um uns einen Überblick über die Daten zu verschaffen, hast du ja bereits den Befehl `summary()` kennengelernt. Du siehst die statistischen Kennwerte einzelner Variablen. Ein weiterer Befehl ist `table()`, der dir die Häufigkeiten verschiedener Ausprägungen angeben kann.

`@instructions`
Benutze `table()` um dir anzuzeigen, wie viele männliche und wie viele weibliche Personen mitgemacht haben. Die entsprechende Variable heißt `GESCHL`. Übergib `table()` diese Variable, vergiss nicht, das Datenset zu spezifizieren. Benutze die Dollar-Schreibweise.

`@hint`


`@pre_exercise_code`

```{r}
Umfragedaten <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/326619bab6bb5d58bead12aa4403a2103f2cddcf/Umfragedaten.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
table(Umfragedaten$GESCHL)
```
`@sct`

```{r}

```







---
## Kreuztabellen

```yaml
type: NormalExercise 
xp: 100 
key: 07a7abf75f   
```

`table()` kannst du auch für verschiedene andere, nominalskalierte Variablen verwenden. Du kannst `table()` ebenso dafür anwenden, sogenannte Kreuztabellen zu erstellen. Du übergibst dafür `table()` zwei Variablen, jeweils mit Komma getrennt. 

`@instructions`
Übergib `table()` als ersten Paramter die Variable `BERUFSTAETIG` und als zweite Variable `GESCHL`. Verwende auch hier die Dollarschreibweise. Du siehst nun, getrennt nach Männern bzw. Frauen in welcher Art sie berufstätig sind.

`@hint`


`@pre_exercise_code`

```{r}
Umfragedaten <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/326619bab6bb5d58bead12aa4403a2103f2cddcf/Umfragedaten.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
table(Umfragedaten$BERUFSTAETIG,Umfragedaten$GESCHL)
```
`@sct`

```{r}

```





