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
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
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
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
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
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```

`@solution`

```{r}
mean(ds$Alter)
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
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```

`@solution`

```{r}
mean(ds$Alter,na.rm=TRUE)
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
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```

`@solution`

```{r}
unique(ds$Sprachauswahl)
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
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
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








---
## na.omit

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 6ff897ead8   
```

Du hast eine Umfrage erstellt und dabei verschiedene **optionale**, wie auch **obligatorische** Fragen gestellt. Insgesamt haben 500 Teilnehmer an deiner Umfrage teilgenommen und diese abgeschlossen. Deine Daten hast du so aufbereitet, dass jeder Teilnehmer einer Zeile, und jede Frage einer Spalte entspricht. Wenn optionale Fragen nicht beantwortet wurden, enthalten diese Zellen ein _NA_. Wie solltest du `na.omit()` nutzen?


`@hint`
Wenn du `na.omit()` auf dem ganzen Datensatz anwendest, löschst du alle Teilnehmer, die auch nur eine optionale Frage nicht beantwortet haben.





`@possible_answers`
- Ich kann `na.omit()` hier gar nicht nutzen
- [Ich sollte `na.omit()` nur auf einem subset anwenden]
- Ich sollte `na.omit()` auf den ganzen Datensatz anwenden

`@feedbacks`
- Falsch
- Richtig
- Falsch





---
## Ausreißer erkennen

```yaml
type: NormalExercise 
xp: 100 
key: 6c73942d08   
```

> 'Das kann doch nicht sein!'

, denkst du, als du dir die Daten anschaust und siehst, dass jemand das Alter 101 eingetragen hat. Darfst du diese Person einfach löschen, weil dir das Alter unglaubwürdig erscheint?
**Du solltest nicht unbegründet Teilnehmer ausschließen.** Im Boxplot werden dir zum Beispiel die Ausreißer graphisch angezeigt. Du musst dazu das Alter als Integer parsen.

`@instructions`
Benutze `as.integer()` und parse damit das Alter als Integer-Werte. Folglich wirst du sehen, dass jetzt die leeren Felder zu _NA_ geworden sind. Du musst also in dieser Spalte keine leeren Felder mehr berücksichtigen.


`@pre_exercise_code`

```{r}
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```

`@solution`

```{r}
ds$Alter <- as.integer(ds$Alter)
```







---
## Ausreißer ausschließen

```yaml
type: TabExercise 
xp: 100 
key: 3a275d53c6   
```





`@pre_exercise_code`

```{r}
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
ds$Alter <- as.integer(ds$Alter)
```








***



```yaml
type: NormalExercise 
xp: 20 
key: 73c3d14373   
```



`@instructions`
Lasse dir den Boxplot über die Altersverteilung ausgeben.

`@hint`
Nutze die Funktion `boxplot()`


`@sample_code`

```{r}

```

`@solution`

```{r}
boxplot(ds$Alter)
```
`@sct`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 20 
key: f695a7cfc6   
```



`@instructions`
Für die folgenden Analysen musst du wissen, ob das Alter hier normalverteilt ist. Prüfe das mit dem Shapiro-Wilk-Test.

`@hint`
Nutze `shapiro.test()`


`@sample_code`

```{r}

```

`@solution`

```{r}
shapiro.test(ds$Alter)
```
`@sct`

```{r}

```








***



```yaml
type: MultipleChoiceExercise 
xp: 20 
key: 9558e8d289   
```



`@instructions`
Können wir hier für das Alter nach dem Shapiro-Wilk-Test eine Normalverteilung annehmen?

`@hint`





`@sct`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 20 
key: 0f4c9a07f1   
```



`@instructions`
Richtig, wir können hier keine Normalverteilung annehmen. Die klassischen **Ausreißertests** setzen allerdings eine Normalverteilung voraus. Haben wir eine _Normalverteilung_ vorliegen, liegen 99,9% der Werte in dem Intervall von der 2,5-fachen Standardabweichung um den Mittelwert. Können wir wie hier _keine Normalverteilung_ annehmen, liegen nach Tschebyscheff mindestens 94% der Werte in dem Intervall der 4-fachen Standardabweichung um den Mittelwert.

Berechne die Obergrenze des Intervalls um den Mittelwert und die 4-fache Standardabweichung. Dazu berechnest du die Standardabweichung mit `sd()` und multiplizierst sie mit 4, addierst sie dann zu dem Mittelwert, den du mit `mean()` berechnest.

`@hint`
Es geht immer noch um die Altersverteilung


`@sample_code`

```{r}

```

`@solution`

```{r}
mean(ds$Alter)+4*sd(ds$Alter)
```
`@sct`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 20 
key: aeddc5c94c   
```



`@instructions`
Berechne ebenso die Untergrenze.

`@hint`



`@sample_code`

```{r}

```

`@solution`

```{r}
mean(ds$Alter)-4*sd(ds$Alter)
```
`@sct`

```{r}

```








***



```yaml
type: NormalExercise 
xp: 0 
key: a849842bdc   
```



`@instructions`
Nicht immer macht es Sinn, die Untergrenze bzw. Obergrenze zu berechnen, z.B. wenn eine natürliche Grenze vorliegt. Es ist nicht nachvollziehbar, dass jemand unter 0 Jahre alt ist. Wenn wir nun alle über der Obergrenze ausschließen möchten, bilden wir ein neues Datenset, dass alle Teilnehmer mit einem Alter überhalb der Obergrenze ausschließt. Die Obergrenze liegt in unserem Fall gerundet bei 68 Jahren. Das neue Datenset soll `ds_bereinigt` heißen.

`@hint`
Benutze `subset()`


`@sample_code`

```{r}

```

`@solution`

```{r}
ds_bereinigt <- subset(ds,Alter>68)
```
`@sct`

```{r}

```








---
## Spaltenwerte umbennen

```yaml
type: NormalExercise 
xp: 100 
key: 00229a0806   
```

Nun hast du ein bereinigtes Datenset, in dem sowohl Ausreißer, Dubletten als auch fehlende Werte ausgeschlossen wurden. Es gibt noch zwei vorverarbeitendene Schritte, die wir hier noch besprechen wollen. 

- Und zwar geht es darum, eine **neue Variable aus einer bestehenden** zu bilden. Ein Anwendungsfall dafür ist z.B. ein Altersgruppierung. Wir möchten eine neue Variable erstellen, in denen wir Altersgruppen festhalten. 
- Eine zweite Vorverarbeitung könnte sein, dass man Variablen neu kodiert.

Möchten wir statt 'eng' und 'ger' vielleicht 0 und 1 kodieren, oder einfach nur zu 'Deutsch' und 'Englisch' umbenennen, müssen wir rekodieren. Das geht ganz einfach mit der Funktion `recode_factor` aus dem Paket `dplyr`.

`@instructions`
Rekodiere die Sprachauswahl neu, wobei 'ger' zu 0 und 'eng' zu 1 wird. Benutze dazu recode_factor(). Wir müssen hier die Spalte Sprachauswahl überschreiben(!) und ggf. danach von dem Datentyp Factor umwandeln zu Integer (sofern wir das brauchen sollten). recode_factor() nimmt als erstes Argument die Spalte, und alle weiteren Argumente sind von der Struktur, dass der Alter_Wert=Neuer_Wert und jeweils diese Zuweisungen mit Komma getrennt. Man kann so viele Zuweisungen machen, wie man möchte bzw. Werte zum rekodieren vorhanden sind.

`@hint`
Vergiss nicht, die Spalte mit den neuen Werten zu überschreiben.

`@pre_exercise_code`

```{r}
library(dplyr)
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```

`@solution`

```{r}
ds$Sprachauswahl <- recode_factor(ds$Sprachauswahl,"eng"=1,"ger"=0)
```
`@sct`

```{r}
success_msg("Wie immer, wenn du die Original-Werte nicht verlieren möchtest, kannst du eine neue 
  Spalte erstellen. Im Folgenden werden wir eine neue Spalte erstellen. Außerdem gibt es ähnliche Funktionen wie revalue oder mapvalues.")
```






---
## Rekodieren

```yaml
type: NormalExercise 
xp: 100 
key: 1c130ba1e8   
```

Du kannst eine kontinulierliche Variable (wie das Alter) in eine kategoriale Variable (wie Altersgruppen) umwandeln nach folgendem Schema `datensatz$kategoriale_var[datensatz$kontinuierliche_var bedingung] <- 'kategorie_name' ` und statt der Bedingung kann dann z.B. >18 stehen oder auch eine verknüpfte Bedingung. Zum Beispiel könnte eine Altersgruppe so festgelegt werden: `ds$Alter_neu[ds$Alter>18 & ds$Alter<30] <- 'junge Erwachsene'`
Wenn zum Schluss jedes Alter auch einer Kategorie zugeordnet sein soll, brauchst du Bedingungen, die die ganze Bandbreite der Altersverteilung abdecken.

`@instructions`
- Erstelle eine neue Variable namens 'Altersgruppe', in der 'Teenager' für alle 12-bis-18-Jährigen eingetragen 
  sein soll. Benutze für die Bedingungen ausschließlich das > oder < Zeichen.
- Erstelle eine neue Kategorie namens 'Senioren' für alle, die älter als 55 Jahre sind.

`@hint`
Halte dich an die Vorlage. Bedenke, dass das Alter von 18 (und 12) in der Altersgruppe eingeschlossen sein sollen.
Bei den Senioren brauchst du nur eine Bedingung d.h. keine verknüpfte Bedingung.

`@pre_exercise_code`

```{r}
library(readr)
ds <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```

`@solution`

```{r}
ds$Altersgruppe[ds$Alter>11 & ds$Alter<19] <- "Teenager"
ds$Altersgruppe[ds$Alter>55] <- "Senioren"
```







---
## Warum Rekodieren?

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 3e806ad53d   
```

Wozu ist Rekodieren **nicht** nützlich?







`@possible_answers`
- Für eine bessere statistische Auswertung
- [Um nominalskalierte Variablen in ordinal- oder intervallskaliert umzuwandeln]
- Umdrehen der Antworten auf einer 5er Likert-Skala
- Wertebereiche zusammenzufassen und Gruppen zu bilden bzw. zu klassifizieren

`@feedbacks`
- Falsch, für die Auswertung ist das nützlich
- Richtig, das geht mit Rekodieren leider nicht! Du hast nun alles vorbereitet und deine Analysen können starten. Viel Erfolg!
- Falsch, das geht
- Das ist der Sinn des Rekodieren



