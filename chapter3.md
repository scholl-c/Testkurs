---
  title: "Datenstrukturen"
  v2: true
  description: "In dieser Lektion geht es um Persönlichkeitstypen... äääh.. Datentypen.  Da gibt es die pünktlichen, gewissenhaften oder die mit der Einstellung 'wir nehmen's wie es kommt'. Und nicht nur im echten Leben entwickelt man ein Gespür, wie mit verschiedenen Persönlichkeitstypen... äh Datentypen umzugehen ist. Eine große Quelle von Missverständnissen ist schon das Kennenlernen. Beim Einlesen von Daten legt die Funktion, die zum Einlesen benutzt wird, die Datentypen erstmal automatisch fest. Da können schon mal Vorurteile entstehen."

---
## Datentypen anzeigen

```yaml
type: NormalExercise 
lang: r
xp: 100 
skills: 1
key: fa0c9a259f   
```

Mit der Funktion ``typeof()`` kannst du dir den Datentyp eines Objekts anzeigen lassen.

`@instructions`
Lasse dir den Datentyp von der Spalte ``speed`` von dem Datensatz ``cars`` anzeigen.

`@hint`
Referenziere mit dem Dollarzeichen auf die Spalte ``speed``.

`@pre_exercise_code`

```{r}

```

`@sample_code`

```{r}

```

`@solution`

```{r}
typeof(cars$speed)
```
`@sct`

```{r}
test_error()
success_msg("Ja, genau!")
test_function("typeof",incorrect_msg="Leider falsch!")
```






---
## Verschiedene Datentypen

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: f127fa1af0   
```

Welchen Datentyp gibt es nicht?


`@hint`
Schaue dir andere Datensätze an und bestimme mit ``typeof()`` ihre Datentypen.





`@possible_answers`
- double
- integer
- character
- complex
- [easy]

`@feedbacks`
- Nein, den gibt es.
- Nein, den gibt es.
- Nein, den gibt es.
- Nein, den gibt es.
- Ja, den gibt es nicht in R!



