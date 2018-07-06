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

Du kannst arithmetische Befehle - wie vielleicht aus anderen Programmiersprachen oder von dem Taschenrechner gewohnt - benutzen, d.h. das Pluszeichen, Minuszeichen, Sternchen und den Schrägstrich für die arithmetischen Grundoperationen. 
Beispiel: 
``2+2``  
``40-2``  
``3*4``  
``45/5``  

`@instructions`
Errechne die Sekunden, die der leitende Oberarzt bei einer 2-stündigen OP im OP-Saal verbringen muss. Verwende dazu mindestens einen arithmetischen Operator.

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

Die Identifikationsnummer hier im Krankenhaus setzt sich aus der OP-Dauer in Sekunden, dem Vornamen des Patienten und seiner Lieblingsfarbe zusammen. Die Identifikationsnummer des Patienten soll später in der Variablen ``id`` gespeichert werden.

Wir können Zahlen oder Objekte in einer **Variablen** speichern. Eine Variable kannst du dir als eine Art Name vorstellen, nur deutlich flexibler. Die Namen der Variablen (wie hier z.B. ``id`` oder ``mein_name``) sollten möglichst aussagekräftig sein und nicht aus einem reservierten Wort wie z.B. function, TRUE, NA oä. bestehen. Zugelassen sind Namen, die Buchstaben, Zahlen, Unterstriche oder Punkte enthalten. Das erste Zeichen muss dabei ein Buchstabe oder ein Punkt sein. Auf den Punkt darf dann aber keine Zahl folgen.

Im Gegensatz zu dem Namen des Patienten, können wir den Namen immer wieder umbenennen oder den Inhalt, d.h. die Zahl oder das Objekt, überschreiben. Bei Menschen geht das nicht so leicht ...  Die Vergabe eines Namens bzw. das Speichern in einer Variablen funktioniert mit einem Zuweisungspfeil. Wir schreiben den Namen, eine spitze Klammer mit Öffnung nach rechts ``<``, einen Bindestrich ``-``, die Zahl oder das Objekt.
Ein Beispiel:   
``mein_name <- "Hans"``  

``mein_name`` ist dabei eine neue Variable, die du dadurch erstellst. Darin speichern tust du "Hans".

`@instructions`
Speichere zunächst die errechnete OP-Dauer (7200) in Sekunden, indem du sie der Variablen ``id`` zuweist (und damit auch eine neue Variable erstellst).

`@hint`
Benutze den Zuweisungspfeil wie im Beispiel.


`@sample_code`
```{r}
# Erstellt Variable mit Inhalt
mein_name <- "Hans"

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

Die OP-Dauer verkürzt sich um 1000 Sekunden. 

Mit den Variablen können wir auch rechnen. Einmal angelegt, können wir mit ihrem Namen immer wieder auf sie zugreifen.  Variablen überschreiben, d.h. manipulieren, funktioniert exakt so, wie Variablen zuweisen.

``mein_name <- "Hans"``   
``mein_name <- "Peter"``

Führt man beide Zeilen nacheinander aus, so ist der neue Wert der Variable ``mein_name`` "Peter". Dass die Variable mal den Wert "Hans" hatte, ist nicht mehr abrufbar.

`@instructions`
Ziehe diese 1000 Sekunden von der bisher errechneten und in ``id`` gespeicherten OP-Dauer ab und überschreibe die Variable ``id`` mit der neuen OP-Dauer.

`@hint`
Benutze nur die Variable zum errechnen des neuen Wertes und nicht den konkreten Wert, d.h. die 7200 Sekunden. Überschreibe die Variable, indem du den Zuweisungspfeil benutzt.

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
test_object("id",incorrect_msg="Nein, das stimmt leider nicht.")
test_student_typed("id <- id-1000",not_typed_msg="Rechne mit R, nicht im Kopf!")
success_msg("Supi!")
```






---
## Valide Variablennamen

```yaml
type: PureMultipleChoiceExercise

xp: 50

key: 13ebf18169



```

Ist ``.4aabb`` ein valider Name für eine Variable?


`@hint`
Eine Variable darf mit einem Punkt beginnen, danach darf aber keine Zahl folgen.





`@possible_answers`
- Ja
- [Nein]

`@feedbacks`
- Genau richtig!
- Nein, das ist kein valider Variablenname.





---
## Zeichenketten

```yaml
type: NormalExercise

xp: 100

key: 4ae649f0f7



```

Die Identifikationsnummer hier im Krankenhaus setzt sich aus der OP-Dauer in Sekunden, dem Vornamen des Patienten und seiner Lieblingsfarbe zusammen. Die OP-Dauer haben wir bereits errechnet und in ``id`` gespeichert. Nun benötigen wir für die Identifikationsnummer noch den Vornamen des Patienten und seine Lieblingsfarbe.

Der Patient heißt laut Personalausweis _Günther_ und seine Lieblingsfarbe ist _Blau_. Bevor wir diese wichtigen Informationen vergessen, speichern wir sie jeweils in einer Variablen ab!
  
Zeichenketten können ebenso in Variablen gespeichert werden wie Zahlen. Im Gegensatz zu Zahlen muss man Zeichenketten mit Anführungszeichen umrahmen. 

`@instructions`
Speichere seinen Namen in ``name`` ab und seine Lieblingsfarbe in ``farbe``. Wie eine Zuweisung funktioniert, weißt du ja bereits.

`@hint`
Vergiss nicht den Zuweisungspfeil und vergiss nicht, die Anführungszeichen zu setzen. Die Variablennamen werden hier klein geschrieben (siehe Aufgabenstellung).



`@solution`
```{r}
name <- "Günther"
farbe <- "Blau"
```
`@sct`
```{r}
test_error()
check_object("name",incorrect_msg="Nein, so nicht. Vielleicht ein Tippfehler?")
check_object("farbe", incorrect_msg="Nein, so nicht. Vielleicht ein Tippfehler?")
success_msg("Gut gemacht!")
```




