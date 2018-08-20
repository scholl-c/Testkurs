---
  title: "Syntax"
  description: "Einfache Rechenoperationen und Zuweisungen"
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

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
2*60*60
```

`@sct`

```{r}
ex() %>% check_expr("7200") %>% check_result() %>% check_equal()

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

`@pre_exercise_code`

```{r}

```


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
ex() %>% check_object("id") %>% check_equal()
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

`@sample_code`

```{r}

```


`@solution`

```{r}
id <- id-1000
```

`@sct`

```{r}
ex() %>% check_operator(.,"-",append=FALSE,not_called_msg="Errechne die Variable mit Hilfe von R") %>% check_object("id","Der Inhalt der Variable ``id`` ist nicht korrekt.") %>% check_code("<-id",TRUE,missing_msg="Überschreibe die Variable",append=FALSE) %>% check_equal("Leider falsch",append=FALSE)
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
- Genau.
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

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
name <- "Günther"
farbe <- "Blau"
```

`@sct`

```{r}
ex() %>% check_object("name",undefined_msg="Der Inhalt der Variable ``name`` ist nicht korrekt.") %>% check_object("farbe",undefined_msg="Der Inhalt der Variable ``farbe`` ist nicht korrekt.") %>% check_equal()
success_msg("Gut gemacht!")
```

---

## Funktionen

```yaml
type: NormalExercise 
xp: 100 
key: f5c1362148   
```


Wir möchten nun die richtige und vollständige Identifikationsnummer generieren und sie in ``id`` festhalten. Damit überschreiben wir die OP-Dauer, die momentan in ``id`` gespeichert ist. Den Wert kriegen wir dann auch nie wieder zurück, falls wir damit weiterhin rechnen möchten. Es ist daher gut zu überlegen, ob nicht doch eine neue Variable angelegt werden soll. Wir überschreiben (!) hier in diesem Fall dennoch, Operationen im Krankenhaus sind schließlich auch nicht so einfach rückgängig zu machen.

R stellt einige **Funktionen** bereit. Eine Funktion bekommt einen Input (z. B. eine Zahl oder ein Objekt), macht etwas damit und gibt wieder etwas (das kann z. B. ebenfalls eine Zahl oder ein Objekt sein) zurück. Du kannst dir das vorstellen wie deinen Körper: Du gibst ihm ein Butterbrot zu essen, irgendetwas passiert damit in deinem Körper und später kommt wieder etwas raus ;-P Welche Prozesse genau in deinem Körper ablaufen, weißt du nur, wenn du hineinschaust. Übertragen auf die Funktionen in R heißt das, du musst erstmal nicht wissen, was die Funktionen detailliert macht, aber du musst wissen, was du der Funktion "zu essen" geben musst und was du dann erwartest, was rauskommen soll. Wenn du in R mal nicht weißt, wofür eine Funktion da ist, dann kannst du die Dokumentation bzw. Hilfe aufrufen mit ``?funktionsname`` oder mit ``help(funktionsname)``.  
Ein Beispiel: ``?paste0``

Mit der Funktion ``paste0()`` kannst du eine Zeichenkette aus mehreren Zeichenketten zusammensetzen. Das kannst du gerne in der Konsole mit ``paste0("Sonne","Mond")`` ausprobieren. Die Werte werden dabei als Argumente übergeben und von der Funktion ohne ein Leerzeichen (deswegen 0) zusammensetzt. Innerhalb der runden Funktionsklammern gibst du Optionen an, das ist z.B.  auf welche Werte du sie anwenden möchtest. Mehrere Optionen (man nennt sie **Argumente**) werden durch Kommata getrennt. Wenn du wissen möchtest, welche Optionen es gibt, kannst du dies u.a. auf der Hilfeseite nachlesen.


`@instructions`
Generiere die vollständige Identifikationsnummer, die sich aus den Variablen ``name``, ``id`` (die OP-Dauer) und ``farbe`` genau in dieser Reihenfolge zusammensetzt. Benutze dafür die Funktion ``paste0``.
Überschreibe die Variable ``id`` (du weißt, das funktioniert wie eine Zuweisung) mit der generierten Identifikationsnummer.

`@hint`


`@pre_exercise_code`

```{r}
name <- "Günther"
farbe <- "Blau"
id <- 6200
```

`@sample_code`

```{r}

```


`@solution`

```{r}
id <- paste0(name,id,farbe)
```

`@sct`

```{r}
ex() %>% check_object("id") %>% check_function("paste0") %>% check_result() %>% check_equal()
success_msg("Herzlichen Glückwunsch!")
```

---

## Funktion anwenden

```yaml
type: NormalExercise 
xp: 100 
key: 5e0dc21918   
```


Nun ist noch wichtig, dass die komplette Identifikationsnummer groß geschrieben wird. Das können wir durch die Funktion ``toupper()`` erreichen.


`@instructions`
Wende diese Funktion auf ``id`` an und überschreibe ``id``.

`@hint`


`@pre_exercise_code`

```{r}
name <- "Günther"
farbe <- "Blau"
id <- 6200
id <- paste0(name,id,farbe)
```

`@sample_code`

```{r}

```


`@solution`

```{r}
id <- toupper(id)
```

`@sct`

```{r}
ex() %>% check_object("id") %>% check_function("toupper") %>% check_result() %>% check_equal()
success_msg("So ist es richtig!")
```

---

## Datensätze

```yaml
type: NormalExercise 
xp: 100 
key: a2b770b99c   
```


Der erste Patient hat seine OP erfolgreich überstanden. Da kommen auch schon die nächsten Patienten. Auch diese haben mehr oder weniger schwere Operationen vor sich. Welche Ursachen gab es für die jeweiligen Operationen?

In R hast du die Möglichkeit nicht nur mit Variablen und Funktionen zu arbeiten, sondern auch mit **Datensätzen**. Die Datensätze kannst du in R einlesen mit zum Beispiel ``read.csv()`` oder ``load()`` und darauf zugreifen, die Daten bearbeiten und analysieren.  Datensätze haben Spalten und Zeilen. Ein Eintrag in einem Datensatz entspricht einer Zeile und ein Attribut (Eigenschaft) entspricht einer Spalte. Du kannst auf eine bestimmte Spalte in einem Datensatz mit dem Dollarzeichen zugreifen, wie z.B. ``datensatz$spalte`` oder mit der alternativen Schreibweise ``datensatz[,spalte]``. Die Schreibweise mit den eckigen Klammern ist dir vielleicht auch schon von Programmiersprachen bekannt. Über die eckigen Klammern kannst du auf Zeilen und Spalten zugreifen. Du kannst dadurch auch auf einzelne Zellen oder letztendlich den ganzen Datensatz zugreifen. Zuerst müssen die Zeilen angegeben werden, dann die Spalten, also ist die Schreibweise folglich ``datensatz[zeile,spalte] ``. Im Beispiel eben haben wir nur eine Spalte auswählen wollen. Wir lassen deshalb die Angabe für die Zeilen einfach leer, d.h. es werden automatisch alle Zeilen ausgewählt. Das Komma müssen wir dennoch schreiben.

Die Daten der Patienten findest du in ``patienten``. Einen Einblick in den Datensatz bekommst du mit ``head(patienten)``.


`@instructions`
Wenn du die Gründe nachschlagen möchtest, musst du auf die zweite Spalte bzw. die Spalte namens ``grund`` zugreifen.  Lasse dir die Gründe ausgeben.

`@hint`
Halte dich an die beiden im Text beschriebenen Art und Weisen die Spalte auszugeben. Referenziere auf die Spalte mit ``grund``

`@pre_exercise_code`

```{r}
patienten <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/repositories/3196/datasets/463119d13a9c6fec4a6bd0791de3a9d5a36a8c4d/patienten.csv")
```

`@sample_code`

```{r}

```


`@solution`

```{r}
patienten$grund
```

`@sct`

```{r}
ex() %>% check_function("$") %>% check_equal()
success_msg("Super!")
```

---

## Zellen auswählen

```yaml
type: NormalExercise 
xp: 100 
key: 59d80431b7   
```


Beispielsweise kannst du mit ``patienten[5,"grund"]`` auf die Zelle in der 5. Reihe und Spalte ``grund`` zugreifen. Du kannst auf Spalten und Zeilen nicht nur mit ihrem Namen referenzieren (wie z.B. ``grund``), sondern auch einfach über ihre Position (z.B. 2). Du musst also nicht wissen, wie die Spalte bzw. Zeile heißt.


`@instructions`
Zeige den Inhalt der Zelle (in ``patienten``) in der zweiten Reihe und der dritten Spalte an.

`@hint`
Gib in die eckigen Klammern (direkt hinter ``patienten``) die Position der Zelle an. Achte auf die richtige Reihenfolge der Positionsangaben.

`@pre_exercise_code`

```{r}
patienten <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/repositories/3196/datasets/463119d13a9c6fec4a6bd0791de3a9d5a36a8c4d/patienten.csv")
```

`@solution`

```{r}
patienten[2,3]
```

`@sct`

```{r}
test_error()
test_output_contains("patienten[2,3]",incorrect_msg="Nein, das ist falsch.")
success_msg("Super!")
```

---

## Zeilen auswählen

```yaml
type: NormalExercise 
xp: 100 
key: 0e9c727645   
```


Schaue dir die Akte des vierten Patienten an. Du möchtest alle Angaben von ihm sehen.


`@instructions`
Zeige den Inhalt der vierten Zeile an.

`@hint`
Vergiss das Komma nicht!

`@pre_exercise_code`

```{r}
patienten <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/repositories/3196/datasets/463119d13a9c6fec4a6bd0791de3a9d5a36a8c4d/patienten.csv")
```

`@solution`

```{r}
patienten[4,]
```

`@sct`

```{r}
test_error()
test_output_contains("patienten[4,]",incorrect_msg="Nein, das ist falsch.")
success_msg("Super!")
```

---

## Daten bearbeiten

```yaml
type: BulletExercise 
xp: 100 
key: cbb2cdcdee   
```


Genauso kannst du auch Spalten, Zeilen, und Zellen umbenennen.  Das könnte so ähnlich aussehen ``datensatz[zeile,spalte] <- 'neuer Wert'`` und hilft dir hoffentlich, diese Aufgabe zu lösen.


`@pre_exercise_code`

```{r}
patienten <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/repositories/3196/datasets/463119d13a9c6fec4a6bd0791de3a9d5a36a8c4d/patienten.csv")
neue_ids <- c("BILL0001", "WILMA0002", "URMEL0003", "IDA0004", "ÖLF0005")
```

***



```yaml
type: NormalExercise 
xp: 25 
key: b51ddc667b   
```





`@instructions`
Das Bauchweh bei Patient Nr. 3 hat sich konkretisiert. Es handelt sich um eine Bauchfellentzündung. Wenn du einen neuen Wert in eine Zelle schreiben möchtest kannst du das durch eine Zuweisung.

`@hint`
Halte dich an das Beispiel. Zeile ist 3, Spalte ist 2.

`@solution`

```{r}
patienten[3,2]<-"Bauchfellentzündung"
```

`@sct`

```{r}
test_error()
test_object("patienten",incorrect_msg="Nein, so nicht.")
success_msg("Super gemacht!")
```


***



```yaml
type: NormalExercise 
xp: 25 
key: f7af524836   
```





`@instructions`
Die Zusammensetzung der Identifikationsnummern soll ab sofort geändert werden. Deshalb müssen auch alle bisherigen IDs geändert werden. Es soll nur noch der Vorname zur Generierung der ID genutzt werden, aber zusätzlich eine fortlaufende Nummer eingefügt werden. Die IDs der vier aktuellen Patienten-IDs werden zu BILL0001, WILMA0002, URMEL0003, IDA0004, ÖLF0005 umbenannt.

Nun müssen wir natürlich nicht jede einzelne Zelle umbenennen, sondern können das komfortabler in dem wir die ganze Spalte 'id' umbenennen. Spalten benennt man ebenfalls über eine Zuweisung um. Dabei weist man der entsprechenden Spalte einen Vektor, der hier z.B. die neuen IDs beinhaltet, zu. Ein Vektor bildest du mit der Funktion c(). Innerhalb von c soll eine Liste mit Werten. Bilde den Vektor für die neuen IDs BILL0001, WILMA0002, URMEL0003, IDA0004, ÖLF0005. Vergiss nicht, die IDs in Anführungszeichen zu setzen. Die Werte werden mit Komma getrennt. Speichere den Vektor in 'neue_ids'

`@hint`
Die Reihenfolge der IDs ist wichtig.

`@solution`

```{r}
neue_ids <- c("BILL0001", "WILMA0002", "URMEL0003", "IDA0004", "ÖLF0005")
```

`@sct`

```{r}
test_error()
test_object("neue_ids",incorrect_msg="Nein, das klappt so nicht.")
success_msg("Super!")
```


***



```yaml
type: NormalExercise 
xp: 25 
key: 231b3f294a   
```





`@instructions`
Überschreibe die Spalte 'id' in 'patienten' mit den neuen IDs.

`@hint`
Wähle die Spalte aus und weise ihr neue_ids zu.

`@solution`

```{r}
patienten$id <- neue_ids
```

`@sct`

```{r}
test_error()
#test_object("patienten$id",incorrect_msg="Nein, das hat nicht geklappt.")
success_msg("Genial!")
```


***



```yaml
type: NormalExercise 
xp: 25 
key: 4c0a794a61   
```





`@instructions`
In der Klinik wird ein neues Programm eingesetzt, das das Alter von Menschen erkennen kann. Man hat nun einen Fehler entdeckt, sodass alle Patienten ein Jahr jünger sind als eingetragen wurde. Das muss nun auch bei den aktuellen vier Patienten behoben werden. Man kann arithmetische Operationen auch auf Spalten anwenden bzw. mit Spalten rechnen. Ändere das Alter der Patienten entsprechend ab und überschreibe damit das aktuell eingetragene Alter. Generell funktioniert diese Art arithmetische Operationen nur, wenn die ganze Zeile oder Spalte Werte desselben Typs enthält.

`@hint`
Wähle die Spalte aus und überschreibe sie mit der gleichen Spalte minus 1.

`@solution`

```{r}
patienten$alter <- patienten$alter-1
```

`@sct`

```{r}
test_error()
#test_object("patienten$alter",incorrect_msg="Das funktioniert so nicht.")
success_msg("Toll gemacht!")
```


---

## Magrittr

```yaml
type: NormalExercise 
xp: 100 
key: 64f0bb4715   
```


R funktioniert in mancher Hinsicht wie eine Operation. Du hast ein Objekt (z.B. ein Mensch) und ein Ziel, wie z.B. den Blinddarm herauszunehmen. Dafür sind viele Handgriffe nötig, die in einer bestimmten Reihenfolge ausgeführt werden müssen. Ein typischer Anwendungsfall in R ist z.B. die Verteilung oder Häufigkeiten von einer oder zwei Variablen (z.B. das Alter und Geschlecht) zu plotten. Dazu hast du z.B. einen Datensatz vorliegen und führst verschiedene vorverarbeitende Schritte aus um die Daten in die richtige Form zu bringen.

Arbeitet man mit R im Sinne von Operationen an einem Datensatz, dann eignet sich dafür das **Paket magrittr**. Pakete kann man zusätzlich installieren mit ``install.packages("paketname")`` und nach erfolgreicher Installation mit ``library(paketname)`` benutzen. Bisher müssen wir entweder jedesmal den Datensatz überschreiben oder für jeden verarbeitenden Schritt einen neuen Datensatz anlegen. Magrittr eröffnet dafür die Möglichkeit zu pipen. Das Pipe-Symbol ist dabei ein ``%>%`` und kettet die einzelnen _Handgriffe_ aneinander.


`@instructions`
Konstruiere analog zu dem Beispiel ein neues Beispiel, bei dem die Spalte ``alter`` ausgewählt wird und ein Jahr zu dem Alter addiert wird. Kleiner Tipp: Die Addition von z.B. eins funktioniert in magrittr mit der Funktion ``"+"(1)``. Benutze auch das Pipe-Symbol ``%>%`` um die Anweisungen zu verketten.

`@hint`
Halte dich an das Beispiel. Ändere bei der zweiten Anweisung den Spaltennamen zu ``alter`` und ändere die dritte Anweisung aus dem (kleinen) Tipp.

`@pre_exercise_code`

```{r}
library(magrittr)
patienten <- read.csv("http://s3.amazonaws.com/assets.datacamp.com/production/repositories/3196/datasets/463119d13a9c6fec4a6bd0791de3a9d5a36a8c4d/patienten.csv")
patienten$grund <- as.character(patienten$grund)
```

`@sample_code`

```{r}
# Binde das Paket magrittr ein
library(magrittr)

# Beispiel
patienten %>% extract("grund") %>% toupper()
```

`@solution`

```{r}
patienten %>% extract("alter") %>% "+"(1)
```

`@sct`

```{r}
test_error()
success_msg("Du bist ein Genie!")
```
