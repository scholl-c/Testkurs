---
  title: "Datenstrukturen"
  v2: true

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
test_output_contains("typeof(cars$speed)",incorrect_msg="Leider falsch!")
```




