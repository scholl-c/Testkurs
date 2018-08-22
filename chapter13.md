---
title: 'Umfragen analysieren'
---

## Forschungsfrage

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: ffc25f3e03   
```


Wir haben bisher immer mit Daten begonnen, aber eigentlich beginnt die Reise in die Statistik mit einer Forschungsfrage. An welcher Eigenschaft erkennst du eine Forschungsfrage?


`@instructions`


`@hint`
Man kann Forschungsfragen auch mehrmals bearbeiten z.B. bezogen auf verschiedene Stichproben. Sie muss ergebnisoffen sein, es ist also nicht von Anfang an klar, wie sie beantwortet werden muss.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- [Sie ist mit wissenschaftlichen Methoden überprüfbar]
- Sie ist vage formuliert
- Niemand hat sich diese Frage bisher gestellt
- Sie kann nicht widerlegt werden

`@feedback`
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


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- Statistische Kennwerte ausgeben lassen
- Skalenniveau bestimmen
- Häufigkeiten berechnen
- [Daten bereinigen]

`@feedback`
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
library(readr)
Umfragedaten <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/326619bab6bb5d58bead12aa4403a2103f2cddcf/Umfragedaten.csv")
```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}
ex() %>% check_mc(2,feedback_msgs=c("Falsch","Richtig, wir schließen so zu viele Personen aus. Auch wenn die Personen nur einen Teil der Angaben gemacht haben, können wir sie in den entsprechenden Analysen noch einbeziehen."))
```


`@possible_answers`


`@feedback`


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
library(readr)
Umfragedaten <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/326619bab6bb5d58bead12aa4403a2103f2cddcf/Umfragedaten.csv")
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
ex() %>% check_function("table") %>% check_result() %>% check_equal()
```


`@possible_answers`


`@feedback`


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
library(readr)
Umfragedaten <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/326619bab6bb5d58bead12aa4403a2103f2cddcf/Umfragedaten.csv")
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
ex() %>% check_function("table") %>% check_result() %>% check_equal()
```


`@possible_answers`


`@feedback`


---

## Nominalskalierte Daten plotten

```yaml
type: NormalExercise 
xp: 100 
key: 4387d18d9b   
```


Wenn wir diese Häufigkeiten, d.h. Häufigkeiten nominalskalierte Daten veranschaulichen möchten, so können wir die `table()`-Funktion auf eine nominalskalierte Variable anwenden und das Ergebnis mit barplot() plotten lassen.


`@instructions`
Probiere das für die Variable Geschlecht nun aus.

`@hint`


`@pre_exercise_code`

```{r}
library(readr)
Umfragedaten <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/326619bab6bb5d58bead12aa4403a2103f2cddcf/Umfragedaten.csv")
```


`@sample_code`

```{r}

```


`@solution`

```{r}
barplot(table(Umfragedaten$GESCHL))
```


`@sct`

```{r}
ex() %>% check_function("barplot") %>% check_function("table") %>% check_result() %>% check_equal()
```


`@possible_answers`


`@feedback`


---

## Nominalskalierte Daten plotten mit ggplot2

```yaml
type: TabExercise 
xp: 100 
key: 287bec7e85   
```





`@instructions`


`@hint`


`@pre_exercise_code`

```{r}
library(readr)
library(ggplot2)
Umfragedaten <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/326619bab6bb5d58bead12aa4403a2103f2cddcf/Umfragedaten.csv")
geschl <- as.data.frame(table(Umfragedaten$GESCHL))
```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`


`@feedback`


***



```yaml
type: NormalExercise 
xp: 50 
key: 08e719b191   
```





`@instructions`
Möchtest du dasselbe mit dem Paket ggplot2 plotten, so wandle stattdessen zunächst 
  das Ergebnis von ``table()`` mit ``as.data.frame()`` in ein Dataframe um und speichere es. Mach das 
  mal mit der Variable Geschlecht (Hinweis: Das Dataframe heißt ``Umfragedaten``) und speichere es unter 'geschl'.

`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
geschl <- as.data.frame(table(Umfragedaten$GESCHL))
```


`@sct`

```{r}
ex() %>% check_object("geschl")
success_msg("Herzlichen Glückwunsch! Mach genauso weiter!")
```


`@possible_answers`


`@feedback`



***



```yaml
type: NormalExercise 
xp: 50 
key: c4c62dddd6   
```





`@instructions`
Nun kannst du den Plot erstellen. Benutze ``+geom_col()`` und den eben erstellten Datensatz. 
  Gib als ``x`` 'Var1' und als ``y`` 'Freq' an.

`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
ggplot(geschl,aes(x=Var1,y=Freq))+geom_col()
```


`@sct`

```{r}
ex() %>% {
  check_function(.,"ggplot") %>% check_arg("data") %>% check_equal()
  check_function(.,"aes") %>% {
    check_arg(.,"x") %>% check_equal(eval=FALSE)
    check_arg(.,"y") %>% check_equal(eval=FALSE)
  }
  check_function(.,"geom_col")
}
```


`@possible_answers`


`@feedback`



---

## Prozentuale Kreuztabelle

```yaml
type: NormalExercise 
xp: 100 
key: 0dbfa0c98a   
```


Es gibt noch die Variante `prop.table()` zu benutzen. Damit können direkt die prozentualen Anteile berechnet werden, wie zum Beispiel mit `prop.table(table(Umfragedaten$GESCHL))`.


`@instructions`
Mache das mal für die Variable `BERUFSTAETIG`.

`@hint`


`@pre_exercise_code`

```{r}
library(readr)
Umfragedaten <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/326619bab6bb5d58bead12aa4403a2103f2cddcf/Umfragedaten.csv")
```


`@sample_code`

```{r}

```


`@solution`

```{r}
prop.table(table(Umfragedaten$BERUFSTAETIG))
```


`@sct`

```{r}
ex() %>% check_function("prop.table") %>% check_function("table") %>% check_output_expr("prop.table(table(Umfragedaten$BERUFSTAETIG))")
```


`@possible_answers`


`@feedback`


---

## Grafiken und Tests

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 2833aad673   
```


Nun kennst du zwei Möglichkeiten, die Häufigkeiten nominalskalierter Daten zu plotten.  Was ist **kein** Grund, um sich solche Häufigkeiten ausgeben zu lassen?

Egal, ob man nun einer Forschungsfrage nachgeht, oder einen statistischen Report schreibt, die Tests und Grafiken ergeben sich anhand des Skalenniveaus der entsprechenden Variablen und der Fragen, die man stellt.


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- [um Daten zu gruppieren]
- um eine Übersicht über die Daten zu bekommen
- um mehr über die Stichprobe bzw. Zusammensetzung der Teilnehmer zu erfahkeinren

`@feedback`
- Richtig
- Falsch
- Falsch

---

## Fragen und ihre Analysen

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 5079f7a520   
```


Die Frage '_Hängt die (subjektive) Zufriedenheit mit einer Berufstätigkeit zusammen?_' resultiert in einer ...


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- Analyse der Unterschiede in den zentralen Tendenzen
- [Zusammenhangsanalyse]
- Clusteranalyse

`@feedback`
- Nein
- Ja!
- Nein

---

## Diagrammart

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: f68c9d5675   
```


Möchte ich die durchschnittlichen Arbeitsstunden bezogen auf den Schulabschluss (Hauptschule, mittlere Reife, Hochschulreife) darstellen, so bietet sich ein ... an.


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- Kreisdiagramm
- Liniendiagramm
- Histogramm
- [Balkendiagramm]

`@feedback`
- Nein leider ist das meist ungeeignet und schlecht lesbar
- Nein die Schulabschlüsse haben keine Verbindung und sind zum Beispiel keine chronologische Sortierung
- Nein das Histogramm gäbe dir lediglich die Häufigkeiten der Arbeitsstunden aus, funktioniert nicht für nominalskalierte Variablen
- Genau!

---

## Diagrammgestaltung

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 33189a448e   
```


Beim Diagramm muss man besonders auf ... achten.


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- [Achsenbeschriftungen und einen aussagekräftigen Titel]
- Harmonische Farben und Verzierungen
- die Platzierung der Legende

`@feedback`
- Genau!
- Naja Verzierungen lenken eher ab und wirken unseriös
- Das funktioniert in der Regel ganz gut mit den Standardeinstellungen

---

## Daten umstrukturieren

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: db719f222c   
```


Für manche Grafiken oder Auswertungen musst du die Daten umstrukturieren. Welcher Befehl passt nicht zu diesem Arbeitsschritt?


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- `melt()`
- `aggregate()`
- [`na.omit()`]

`@feedback`
- Falsch
- Falsch
- Richtig der passt nicht!

---

## Statistische Kennwerte

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 9628aa86be   
```


Nachdem wir aussagekräftige Grafiken und Testergebnisse vorliegen haben, werden die Ergebnisse zusammengefasst und berichtet. Welche Art der Darstellung der Ergebnisse eignet sich besonders bei vielen statistischen Kennwerten?


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}

```


`@possible_answers`
- [Tabellen]
- Fließtext
- Diagramme

`@feedback`
- Genau! Vielen Dank für deine Teilnahme an diesem Kurs.
- Nein
- Nein
