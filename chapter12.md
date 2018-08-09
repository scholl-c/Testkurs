---
title: 'Besondere Tests'
---

## Interrater-Reliabilität

```yaml
type: NormalExercise 
xp: 100 
key: 2a24acb3f2   
```


Es gibt zwei Tests, den du noch kennen solltest. Wir beginnen mit der **Interrater-Reliabilität**. Damit wird die Verlässlichkeit oder Übereinstimmung zwei oder mehrerer Coder/Rater angegeben. Coder meint Menschen, die kodieren, d.h. Schlagwörter vergeben, nach einem bestimmten Muster umkodieren. Rater meint Menschen, die etwas bewerten.

Beispielsweise soll eine neue Professoren-Stelle besetzt werden. Dazu wurden mehrere Kandidaten vorgeladen und hielten Probevorträge, die von jeweils zwei Studenten und zwei Professoren bewertet wurden. Wie einig sind sich die Studenten bzw. Professoren?

Bei einem Vergleich von zwei Codern/Ratern mit Kodierungen auf Nominalskalenniveau wird **Cohens Kappa** bestimmt, bei mehreren Codern/Ratern das **Fleiss Kappa**. Wir haben im Beispiel ordinalskalierte Bewertungen von 1 (schlecht) bis 7 (sehr gut). Bei Daten auf Ordinalskalenniveau empfiehlt es sich den gewichteten Kappa zu berechnen. Es besteht die Möglichkeit zwischen 'equal' oder 'squared' zu wählen. 
_Hinweis: Bei Cohens Kappa auf Nominalskalenniveau schreiben wir 'unweighted'_


`@instructions`
Wie übereinstimmend haben die Studenten bewertet? Berechne den gewichteten Cohens Kappa  mit `kappa2(interrater[,c(2,3)],'equal')`. Für `kappa2` wurde das Paket `irr` geladen.

`@pre_exercise_code`
```{r}
library(irr)
interrater <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/32fe40c479aa377d8af347dd26bcd1d7ed5d636e/interrater.csv")
```
`@solution`
```{r}
kappa2(interrater[,c(2,3)],'equal')
```
---

## Cohens Kappa

```yaml
type: NormalExercise 
xp: 100 
key: 4a839d64f8   
```


Nun berechne den Cohens Kappa analog zum vorherigen Beispiel für die Übereinstimmung der beiden Professoren.


`@instructions`
Berechne den Cohens Kappa, verwende `kappa2`.

`@pre_exercise_code`
```{r}
library(irr)
interrater <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/32fe40c479aa377d8af347dd26bcd1d7ed5d636e/interrater.csv")
```
`@solution`
```{r}
kappa2(interrater[,c(4,5)],'equal')
```
---

## Interpretation Cohens Kappa

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 2874b910e2   
```


Welche Gruppe hatte eine größere Übereinstimmung in der Bewertung nach Cohens Kappa?


`@hint`
Der Wert für Kappa misst in Prozent die Übereinstimmung der Ratings. Ab etwa 0.4 aufwärts ist der Wert befriedigend, ab 0.6 ist er gut.

`@possible_answers`
- Die beiden Studenten
- [Die beiden Professoren]

`@feedbacks`
- Nein, die waren sich nicht so einig.
- Ja!

---

## Cronbachs Alpha

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 06594d325d   
```


Der zweite Test, den wir betrachten, ist **Cronbachs Alpha**. Er misst die interne Konsistenz einer Skala. Einfach gesagt, messen wir die Korrelation zwischen den Antworten in einem Fragebogen. Er gibt daher an, ob zwei oder mehr Fragen dasselbe messen.

Ein Anwendungsfall sind Persönlichkeitstest: Es sollen mehrere Dimensionen einer Persönlichkeit, wie zum Beispiel Extrovertiertheit oder Gewissenhaftigkeit gemessen werden. Zu jeder Dimension gibt es mehrere Fragen. Es soll überprüft werden, ob die Teilnehmer des Persönlichkeitstests so geantwortet haben, dass man mit dieser Fragestellung verlässlich messen konnte, wie beispielsweise extrovertiert oder gewissenhaft jemand ist. Durch unklare Fragen oder Personen, die sozial erwünscht antworten, kann Cronbachs Alpha sinken.

Cronbachs Alpha liegt zwischen 0 und 1. Was bedeutet hier ein Wert von zum Beispiel 0.4?


`@hint`
Ab ca. 0.7 oder 0.8 (je nach Auslegung) kann man von einer akzeptablen oder guten Genauigkeit sprechen.

`@possible_answers`
- [eine schlechte interne Konsistenz]
- eine gute interne Konsistenz

`@feedbacks`
- Genau!
- Nein

---

## Cronbachs Alpha berechnen

```yaml
type: NormalExercise 
xp: 100 
key: 8c2a6c845f   
```


Du kannst jetzt Cronbachs Alpha ausprobieren. Nehmen wir an, wir hätten verschiedenen Personen vier Fragen (in Form einer 5er-Likert-Skala) gestellt und in `cronbach` gespeichert.


`@instructions`
Messe mit der Funktion `cronbach.alpha()` aus dem Paket `ltm` die interne Konsistenz dieser Skala.

`@hint`
Verwende die Funktion cronbach.alpha() und übergib den Datensatz 'cronbach'

`@pre_exercise_code`
```{r}
cronbach <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/3c6d7fd41b65af514dadf8ae0a06cad868e463d2/cronbach.csv")
library(ltm)
```
`@solution`
```{r}
cronbach.alpha(cronbach)
```