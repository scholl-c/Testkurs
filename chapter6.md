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
`@sample_code`

```{r}

```

`@solution`

```{r}
duplicated(ds)
```
`@sct`

```{r}

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





---
## Zufällige Duplikate

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 49a3054785   
```

Genau, zwei Personen hatten zufällig das gleiche Alter und das gleiche Geschlecht. Du möchtest die Personen also eigentlich nicht ausschließen. Auf was musst du daher achten, wenn du Duplikate entfernst?


`@hint`
Selbst wenn du andere Merkmale hinzufügst, kannst du nicht sicher sein, ob es nicht doch Personen gibt, die sich in den abgefragten Merkmalen gleichen.





`@possible_answers`
- [Dass ich einen eindeutige Referenz für jede Zeile habe (z.B. eine fortlaufende Nummer)]
- Dass ich meine Stichprobengröße richtig wähle
- Dass ich andere Merkmale hinzufüge, in denen sich die Personen unterscheiden

`@feedbacks`
- Richtig
- Nein, das alleine reicht nicht
- Nein, das könnte auch schief gehen





---
## Mittelwert berechnen

```yaml
type: NormalExercise 
xp: 100 
key: dea228c286   
```

Nun hast du das Duplikat entfernt. 

> Endlich kannst du mit den ersten Analysen starten! 

`@instructions`
Berechne den Altersdurchschnitt mit der Funktion `mean()`

`@hint`
Auf die Spalte `Alter` greifst du mit `ds$Alter` zu.

`@pre_exercise_code`

```{r}
ds <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
mean(ds$Alter)
```
`@sct`

```{r}

```







---
## NA

```yaml
type: NormalExercise 
xp: 100 
key: d04e8b4c20   
```

**Das kann doch nicht sein? Was ist denn dieses komische NA?**
_NA_ steht für _no answer_ oder _not available_. Das bedeutet, es kann keine Antwort gegeben werden.

**Aber warum? R kann doch einfach das Durchschnittsalter der Personen errechnen, die es mir verraten haben und die anderen, die es mir nicht verraten wollten, außen vor lassen.**
Ja, das kann R. Aber das musst du explizit sagen. Zum Beispiel kannst du das bei der Funktion `mean()`, wenn du als zweites Argument `na.rm` auf TRUE setzt. Standardmäßig ist es auf FALSE. Und das `rm` steht für _remove_, d.h. R bezieht die _NAs_ bei der Berechnung des Durchschnitts nicht mit ein. 

Du möchtest die _NA_'s ein für alle mal loswerden? Kein Problem! Die Funktion `na.omit()` entfernt alle Zeilen mit NA's aus dem Datenset. Die komplette Zeile! Da du aber trotzdem auswerten möchtest, welche Sprachauswahl bevorzugt wurde, und manche Leute einfach nur nicht ihr Alter nennen wollten, belässt du es erstmal dabei, die _NA_'s nicht zu löschen. Den Mittelwert konntest du ja auch so berechnen.

`@instructions`
Versuche nochmal den Durchschnitt zu berechnen, setze aber `na.rm` auf TRUE.

`@hint`
Gib zusätzlich zur vorherigen Berechnung noch `na.rm=TRUE` an.

`@pre_exercise_code`

```{r}
ds <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
mean(ds$Alter,na.rm=TRUE)
```
`@sct`

```{r}

```







---
## Manipulationen aufdecken

```yaml
type: NormalExercise 
xp: 100 
key: d4c211aa81   
```

Du möchtest nun überprüfen, ob keiner deine Umfrage manipuliert hat und nur die vorgegebenen Möglichkeiten für die Sprachauswahl - nämlich eng und ger - ausgewählt wurden. Dafür und für andere Fälle wenn du eine Ausgabe aller unterschiedlichen Ausprägungen einer Variablen haben möchtest, kannst du unique() benutzen. Selbst wenn ein Wert mehrfach vorkommt, wird er dir nur einmal angezeigt. 

`@instructions`
Überprüfe damit die Werte für die Sprachauswahl.

`@hint`
Innerhalb von unique() muss die Spalte 'Sprachauswahl' ausgewählt werden.

`@pre_exercise_code`

```{r}
ds <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
unique(ds$Sprachauswahl)
```
`@sct`

```{r}

```







---
## Leere Angaben

```yaml
type: TabExercise 
xp: 100 
key: 1b327584fb   
```

Puh! Soweit scheint alles gut zu sein! 



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
xp: 35 
key: 00ac756676   
```



`@instructions`
Überprüfe nun analog zur vorherigen Aufgabe das Alter auf unerwartete Werte.

`@hint`
Innerhalb von `unique()` muss die Spalte `Alter` ausgewählt werden.


`@sample_code`

```{r}

```

`@solution`

```{r}
unique(ds$Alter)
```
`@sct`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 35 
key: f58874e737   
```



`@instructions`
Vielleicht fällt dir nun die leere Angabe auf. Löschen kannst du die leeren Angaben, wenn du alle Felder auswählst, die keine leere Angabe enthalten und den Datensatz überschreibst. Wir haben noch nicht gelernt, wie **Zeilen nach einer Bedingung ausgewählt** werden können. Es gibt dazu zwei Möglichkeiten. Die eine Möglichkeit ist mit der Funktion `subset()` und die andere ist sehr ähnlich zu der Auswahl von Zeilen, nur dass man da eine Bedingung angeben kann.

Du möchtest die Zeilen auswählen, die keine leere Angabe enthalten. Benutze dazu `subset()`. Du kannst dies nach folgendem Schema benutzen `subset(datensatz,bedingung)`. In der Formulierung der Bedingung kannst du Spaltennamen (ohne Anführungszeichen), logische Operatoren und Vergleichszeichen wie == oder != nutzen.

`@hint`
Benutze `Alter!=""` als Bedingung


`@sample_code`

```{r}

```

`@solution`

```{r}
subset(ds,Alter!="")
```
`@sct`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 30 
key: 68f0c28842   
```



`@instructions`
Wenn du alternativ `na.omit()` nutzen möchtest, wandle die leeren Angaben in _NA_'s um. Das geht mit der Funtion `na_if()`, die als erstes Argument die Spalte bzw. einen Vektor nimmt und als zweites Argument die leere Angabe, also zwei Anführungszeichen.

`@hint`
Benutze als erstes Argument `ds$Alter`, als zweites Argument `""` und trenne die Argumente mit Komma.


`@sample_code`

```{r}

```

`@solution`

```{r}
na_if(ds$Alter,"")
```
`@sct`

```{r}

```






