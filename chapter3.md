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
test_function("typeof",incorrect_msg="Leider falsch!")
success_msg("Ja, genau!")
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





---
## Datentyp verändern

```yaml
type: TabExercise 
xp: 100 
key: 18a1b4f5fa   
```

Nachdem man nun andere besser kennengelernt hat, sortiert man sie gerne mal in andere imaginäre Schubladen um. Das kannst du auch mit den Daten in R machen. 
Wir arbeiten im Folgenden mit dem Objekt namens ``daten``.



`@pre_exercise_code`

```{r}
daten <- c("04.03.1999","12.06.1973","22.01.2018","09.05.2013")
```
`@sample_code`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 35 
key: 7b3ea49696   
```



`@instructions`
Bestimme den Datentyp von ``daten`` mit ``typeof()``.

`@hint`
Benutze die Funktion ``typeof()`` und wende sie auf ``daten`` an.


`@sample_code`

```{r}

```

`@solution`

```{r}
typeof(daten)
```
`@sct`

```{r}
test_error()
test_student_typed("typeof(daten)")
success_msg("Super!")
```







***



```yaml
type: NormalExercise 
xp: 35 
key: 7568a92801   
```



`@instructions`
Nun siehst du, dass es sich um Daten handelt. Wenn du zum Beispiel eine Grafik mit zeitlichem Verlauf erstellen möchtest, müssen dazu diese Daten auch als Daten interpretiert werden. Das geht hier zum Beispiel mit der Funktion ``as.Date()``. Die Funktion braucht allerdings noch einen Hinweis, wie die Daten formatiert sind. Dazu werden Platzhalter verwendet wie ``%m`` für Monat, ``%d`` für Tag oder ``%Y`` für eine vierstellige Jahreszahl. Weitere Abkürzungen findest du in der Dokumentation. Das Format in diesem Fall ist ``%d.%m.%Y`` und muss als zweites Argument übergeben werden. Wende die Funktion ``as.Date()`` auf ``daten`` an und überschreibe dabei ``daten``.

`@hint`
Benutze ``as.Date()``. Übergib der Funktion als erstes unser Objekt ``daten`` und als zweites das Format.


`@sample_code`

```{r}

```

`@solution`

```{r}
daten <- as.Date(daten,"%d.%m.%Y")
```
`@sct`

```{r}
test_error()
test_object("daten","Nee")
success_msg("Das hat gut geklappt!")
```







***



```yaml
type: NormalExercise 
xp: 30 
key: bb8c72d423   
```



`@instructions`
Wenn du eine Arbeitsumgebung, wie z. B. ``RStudio`` nutzt, kannst du nach diesem Schritt sehen, dass sich der Datentyp verändert hat und unser Datum richtig erkannt wurde. 

Die Funktion ``weekdays()`` gibt dir jetzt die Wochentage der Daten an. Wende die Funktion ``weekdays()`` auf ``daten`` an.

`@hint`
Benutze die Funktion ``weekdays()``


`@sample_code`

```{r}

```

`@solution`

```{r}
weekdays(daten)
```
`@sct`

```{r}
test_error()
test_output_contains("weekdays(daten)","nee")
success_msg("Sehr gut!")
```





