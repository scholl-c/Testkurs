---
  title: "Syntax"
  description: "Einfache Rechenoperationen und Zuweisungen"
  v2: true

---
## Arithmetische Operationen

```yaml
type: NormalExercise

xp: 100

key: 2401a95bb9



```

Wir befinden uns im OP-Saal. Der Patient ist erst vor Kurzem eingeliefert worden. Die OP wird voraussichtlich 2 Stunden dauern. Wie viele Sekunden sind das bloß? In so einer Notsituation darf kein Fehler passieren und der Assistenzarzt weiß nicht wo ihm der Kopf steht, deshalb verlässt er sich auf R.

Du kannst arithmetische Befehle wie gewohnt benutzen, d.h. das Pluszeichen, Minuszeichen, Sternchen und den Schrägstrich für die arithmetischen Grundoperationen. 
Beispiel: ``2+2``

`@instructions`
Errechne die Sekunden, die der leitende Oberarzt bei einer 2-stündigen OP im OP-Saal verbringen muss. Verwende dazu min. einen arithmetischen Operator.

`@hint`
Eine Stunde hat 60 Minuten, eine Minute besteht aus 60 Sekunden.



`@solution`
```{r}
2*60*60
```
`@sct`
```{r}
test_error()
test_output_contains("7200",incorrect_msg="falsch")
success_msg("Super!")
```






---
## Zuweisungen

```yaml
type: NormalExercise

xp: 100

key: 6c4623ef65



```

Die Identifikationsnummer hier im Krankenhaus setzt sich aus der OP-Dauer in Sekunden, 
  den Vornamen des Patienten und seiner Lieblingsfarbe zusammen. 
   Wir können Zahlen oder Objekte in einer Variablen speichern. Eine Variable kannst du dir als eine Art Name vorstellen, nur 
  deutlich flexibler. Die Namen der Variablen (wie hier z.B. id) sollten möglichst aussagekräftig sein und 
  nicht aus einem reservierten Wort wie z.B. function, TRUE, NA oä. bestehen. Zugelassen sind 
  Namen, die Buchstaben, Zahlen, Unterstriche oder Punkte enthalten. Das erste Zeichen muss dabei 
  ein Buchstabe oder ein Punkt sein. Auf den Punkt darf dann aber keine Zahl folgen.

 Im Gegensatz zu dem Namen des Patienten, können wir den Namen immer wieder umbenennen 
  oder den Inhalt, d.h. die Zahl oder das Objekt, überschreiben. Bei Menschen geht das nicht so leicht ... 
  Die Vergabe eines Namens bzw. das Speichern in einer Variablen funktioniert mit einem Zuweisungspfeil. Wir 
  schreiben den Namen, eine spitze Klammer mit Öffnung nach rechts, einen Bindestrich, die Zahl oder das Objekt.

Einfache Zuweisungen funktionieren über einen Pfeil. Beispiel: ``mein_name <- "hans"``
``mein_name`` ist dabei eine neue Variable, die du dadurch erstellst. Darin speichern tust du hans.

`@instructions`
Die Identifikationsnummer des Patienten soll in der Variablen 'id' gespeichert werden. Dafür müssen wir zunächst die errechnete OP-Dauer in Sekunden speichern.

`@hint`
Benutze den Zuweisungspfeil wie im Beispiel.


`@sample_code`
```{r}
# Erstellt Variable mit Inhalt
mein_name <- "hans"

# Zeigt Inhalt an
mein_name
```
`@solution`
```{r}
id <- 7200
```
`@sct`
```{r}
test_error()
test_student_typed("id <- 7200")
success_msg("Toll!")
```






---
## Variablen

```yaml
type: NormalExercise

xp: 100

key: 674882dfea



```

Mit den Variablen können wir auch rechnen. Einmal angelegt, können wir mit ihrem Namen immer wieder auf sie zugreifen.  Variablen überschreiben, d.h. manipulieren, funktioniert exakt so, wie Variablen zuweisen.
```mein_name <- "hans" ``
``mein_name <- "peter"``

Die OP-Dauer verkürzt sich um 1000 Sekunden. 


`@instructions`
Ziehe diese 1000 Sekunden von der bisher errechneten und in 'id' gespeicherten OP-Dauer ab und 
  überschreibe die Variable 'id' mit der neuen OP-Dauer.

`@hint`


`@pre_exercise_code`
```{r}
id <- 7200
```

`@solution`
```{r}
id <- id-1000
```
`@sct`
```{r}
test_error()
test_output_contains("6200","nope!")
success_msg("Supi!")
```




