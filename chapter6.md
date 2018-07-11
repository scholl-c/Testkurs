---
  title: "Datenvorverarbeitung"
  v2: true

---
## Dubletten

```yaml
type: NormalExercise 
lang: r
xp: 100 
skills: 1
key: 122f0435a5   
```

So ärgerlich! Du hast Daten erhoben, aber manche Teilnehmer deiner Umfrage haben ihr Alter nicht angegeben! Und dann hast du die Vermutung, dass manche Teilnehmer nicht ihr wahres Alter eingetragen haben. Die Übeltäter würdest du gerne erwischen, aber natürlich hast deinen Teilnehmern Anonymität garantiert. Dir bleibt also nichts anderes, als deine Daten durchzuschauen, zu bereinigen und die Teilnehmer von deinen Analysen auszuschließen.

Gerade bei primärstatistischen Erhebungen müssen wir die Daten überarbeiten und kontrollieren. Die Daten sollten auf fehlende Werte (missing values), Ausreißer und Dubletten, d.h. doppelte Einträge, überprüft werden.

Du willst also im Folgenden deine Daten (als `ds` in der Arbeitsumgebung geladen) bereinigen.

`@instructions`
Mit der Funktion `duplicated()` kannst du doppelte Einträge finden. Die Funktion gibt dir ein TRUE zurück, wenn doppelte Einträge identifiziert wurden, oder FALSE wenn das nicht der Fall ist. Wende diese Funktion auf deine Daten an.

`@hint`
Innerhalb der runden Klammern von `duplicated()` muss der Name deines Datensatzes.

`@pre_exercise_code`

```{r}
ds <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```

`@solution`

```{r}
duplicated(ds)
```







---
## Duplikate entfernen

```yaml
type: TabExercise 
xp: 100 
key: 49953a103c   
```

Wir möchten nun Duplikate finden, überprüfen und ausschließen.



`@pre_exercise_code`

```{r}
ds <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```
`@sample_code`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 25 
key: 207f3991e2   
```



`@instructions`
Du siehst, dass es nun einen Fall mit TRUE gibt. Mit `table(duplicated(ds))` kannst du dir anzeigen lassen, wie viele Duplikate entdeckt worden.  Gib das ein.

`@hint`



`@sample_code`

```{r}

```

`@solution`

```{r}
table(duplicated(ds))
```
`@sct`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 25 
key: 72943f0e39   
```



`@instructions`
Okay, du hast nichts übersehen, es gibt genau ein Duplikat. In welcher Zeile steht es? Du kannst dir die Zeilennummer des Eintrags mit TRUE mit Hilfe der Funktion `which()` ausgeben lassen. Funktionen kannst du, wie auch eben bei `table()` gesehen, verschachteln. Das Prinzip mit `which()` ist jetzt das Gleiche wie bei `table()`. Lasse dir die Zeilennummer ausgeben, achte dazu auf das analoge Beispiel mit `table()`

`@hint`
Ersetze `table` mit `which` in `table(duplicated(ds))`


`@sample_code`

```{r}

```

`@solution`

```{r}
which(duplicated(ds))
```
`@sct`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 25 
key: 01a0ef8ff8   
```



`@instructions`
Aber welche Einträge hat das Duplikat? Welches Alter hat die Person? Das kannst du sehr einfach über das normale Vorgehen von der Auswahl von Zeilen herausfinden. Als Auswahl der Zeilen gibst du nun keine feste Zahl an, sondern `which(duplicated(ds))`. Wähle die Zeile des Duplikats aus und lasse dir alle Spalten ausgeben.

`@hint`
Die Zeilenauswahl funktioniert über `datensatz[zeile,]`


`@sample_code`

```{r}

```

`@solution`

```{r}
ds[which(duplicated(ds)),]
```
`@sct`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 25 
key: b7fdab91d0   
```



`@instructions`
Das Duplikat soll weg! Möchtest du bestimmte Zeilen ausschließen, kannst du das mit einem Minuszeichen vor der Zeilenauswahl. Um das Duplikat dauerhaft von deinen Analysen zu entfernen, musst du nun ein neues Datenset anlegen oder das bestehende `ds` überschreiben. Wir wählen die zweite Variante, d.h. überschreibe das Datenset.

`@hint`
Benutze den Befehl aus der vorherigen Aufgabe. Füge vor die Zeilenauswahl, aber dennoch in den eckigen Klammern das Minus und vergiss nicht, das Datenset zu überschreiben.


`@sample_code`

```{r}

```

`@solution`

```{r}
ds <- ds[-which(duplicated(ds)),]
```
`@sct`

```{r}

```








---
## Dublikate finden

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: c77998474a   
```

Du hast das Alter und das Geschlecht von 50 Personen erhoben und keine Person zweimal nach ihrem Alter und Geschlecht gefragt. Du findest darunter trotzdem 2 Duplikate. Was ist passiert?


`@hint`
Denk mal scharf nach! ;)





`@possible_answers`
- Die Funktion duplicated() funktioniert nicht
- [Es gab zwei Personen, die das gleiche Geschlecht und Alter hatten]
- Die Funktion duplicated() ist nicht fehlerresistent
- Es gibt doch immer irgendwie Duplikate

`@feedbacks`
- Doch, auch in diesem Fall funktioniert duplicated() wie es soll
- Ja, genau! 
- Die Funktion duplicated() funktioniert einwandfrei
- Naja



