---
  title: "Test auf Unterschiede"
  description: "Es geht jetzt darum, Gruppen zu vergleichen. Man möchte wissen, ob sich z.B. Gruppen von \n  Versuchsteilnehmern oder Gruppen unterteilt nach Geschlecht in bestimmter Hinsicht voneinander \n  unterscheiden. Mit den folgenden Tests vergleichen wir die Lagemaße (Mittelwerte etc.) der \n  Gruppen auf signifikante Unterschiede."

---
## Lagemaße

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 6d69125797   
```

Mit welcher Diagrammart können wir die Lagemaße, wie z.B. Mittelwerte und Quantile, vergleichen?


`@hint`
Bei welchem Diagramm kannst du Mittelwerte auf einen Blick erkennen?





`@possible_answers`
- [Boxplot]
- Balkendiagramm
- Histogramm
- Streudiagramm

`@feedbacks`






---
## Abhängige Variable

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: c7da36f204   
```

Wir wollen wissen, ob die Unterschiede bezgl. zweier Versuchsgruppen zufällig zustande gekommen sind oder wie wahrscheinlich es ist, dass tatsächlich ein Unterschied vorliegt. Der p-Wert gibt die Wahrscheinlichkeit für einen zufälligen Unterschied an. Liegt diese unter 5%, nehmen wir an, dass es sich um einen signifikanten Unterschied handelt. Beweisen können wir den Unterschied aber trotz Sigifikanz nicht. Und umgekehrt, liegt die Wahrscheinlichkeit über 5%, müssen wir von einem zufälligen Unterschied ausgehen.

Es gibt verschiedene Tests. Mehrere Faktoren bestimmen, welchen Test man rechnen darf. Ein Faktor ist das Skalenniveau der abhängigen Variable. Ist die abhängige Variable intervall- oder verhältnisskaliert, dürfen prinzipiell parametrische Tests gerechnet werden. Ansonsten kommen nur non-parametrische Tests in Frage.

Wir fragen 50 Teilnehmer, die Hälfte ist weiblich, die andere männlich, nach ihrer Körpergröße und möchten wissen, ob es einen signifikanten Unterschied gibt. Wir haben also zwei Variablen - das Geschlecht (m,w) und die Körpergröße. Welches davon ist die abhängige Variable?


`@hint`
Bilde den Satz - 'Ich möchte untersuchen, ob [x] von [y] abhängt.' Dabei ist [x] die abhängige Variable und [y] die unabhängige Variable. Die unabhängige Variable ist jene Variable, die du im Experiment manipulierst d.h. die du veränderst und bestimmst.





`@possible_answers`
- Geschlecht (m,w)
- [Körpergröße (in cm)]

`@feedbacks`
- Nein
- Genau, das ist die abhängige Variable!





---
## Verbundene und unverbundene Stichproben

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 7f2e0d8c1a   
```

Welchen Test man rechnen darf, wird des weiteren durch
- (1) Sind die Stichproben der beiden Gruppen verbunden oder unverbunden (manche sagen auch abhängig oder unabhängig)? 
- (2) Sind die Stichproben normalverteilt oder zumindest ausreichend groß? 
- (3) Kann Varianzhomogenität angenommen werden?
bestimmt.

**Verbunden** sind die Stichproben (das hat jetzt nichts mehr mit den Variablen zu tun) dann, wenn Personen zweimal oder mehrfach gemessen oder befragt wurden. Macht man zum Beispiel eine Untersuchung zur Konzentrationsfähigkeit und lässt die gleichen Probanden einmal morgens und einmal abends die gleichen Aufgaben lösen, handelt es sich um eine verbundene Stichprobe. Wie du auf **Varianzhomogenität** und Normalverteilung prüfen kannst, hast du in der Lektion zu Allgemeinen Tests gelernt. Die Prüfung auf Varianzhomogenität und Normalverteilung bezieht sich jeweils auf die Stichproben der beiden Gruppen, wie z.B. die Körpergrößen der Frauen und die Körpergrößen der Männer.

Ist das **Skalenniveau** der abhängigen Variable mindestens intervallskaliert und kann eine Normalverteilung angenommen werden, darf man grundsätzlich die Funktion `t.test()` verwenden. Die Parameter müssen je nach Voraussetzung angepasst werden. Handelt es sich um eine **verbundene Stichprobe**, muss `paired=TRUE` angegeben werden. Kann **Varianzhomogenität** angenommen werden, setze `var.equal=TRUE`

Es kommt vor, dass du eine Ahnung hast, wie die Gruppen sich unterscheiden. Zum Beispiel könnte das sein, dass du prüfen möchtest, ob Frauen signifikant kleiner sind als Männer. Wenn das der Fall ist nennt man das eine gerichtete Hypothese und du solltest `alternative='less'` oder `alternative='greater'` angeben. In allen anderen Fällen ist `alternative='two.sided'` dh. du weißt nicht, in welche Richtung die Abweichung besteht. Es handelt sich daher um eine ungerichtete Hypothese. Das ist auch der Default-Wert und muss daher nicht explizit angegeben werden.

Es wurden zwei Schlafmittel an 10 Personen getestet und die Zunahme der Stunden im Schlaf gemessen. Damit sollen die beiden Schlafmittel verglichen werden. Die 10 Probanden testen also beide Schlafmittel. Es handelt sich folglich um ...
Nun wollen wir anhand eines Beispiels durchgehen, wie man die zentralen Tendenzen 
  zweier Gruppen vergleicht.


`@hint`






`@possible_answers`
- [eine verbundene Stichprobe]
- eine unverbundene Stichprobe

`@feedbacks`






---
## t-Test paired

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 4bd33db4d3   
```

Demnach müssten wir ...


`@hint`
paired bedeutet hier nichts anderes als 'verbunden'





`@possible_answers`
- [`paired=TRUE` angeben]
- `paired=FALSE` angeben

`@feedbacks`
- Ja, genau!
- Nein, denk nochmal nach.





---
## Abhängige und unabhängige Variablen

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: cc589f06e3   
```

Lasse dir mit der Funktion `head()` die ersten Zeilen des Datensatzes `sleep` anzeigen. Der Datensatz enthält drei Variablen: 
- die ID des Probanden,  
- das Schlafmittel (1 oder 2), 
- und die Schlafstunden im Vergleich zu einem normalen Schlaf der Probanden. 

Welches davon ist die abhängige Variable?

`@instructions`
- ID
- Schlafmittel
- [Schlafstunden]

`@hint`
Die abhängige Variable ist jene Größe, die sich verändert durch Einflussnahme durch die unabhängige Variable auf das Experiment.

`@pre_exercise_code`

```{r}

```



`@sct`

```{r}
test_mc(3,"Nein","Nein","Ja")
```






---
## Testvoraussetzung

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 49a83afe17   
```

Ist die abhängige Variable auf Intervall- oder Verhältnisskalenniveau?


`@hint`
Welche Rechenoperationen kann man mit Angaben in 'Stunden' durchführen?





`@possible_answers`
- [Ja]
- Nein

`@feedbacks`
- Richtig
- Falsch





---
## t-Test benutzen?

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 08ff55df0f   
```

Dürfen wir nun prinzipiell die Funktion t.test() benutzen?


`@hint`
Wir haben bisher nur geprüft, ob das Skalenniveau ausreicht.





`@possible_answers`
- Ja
- Nein
- [Weiß nicht]

`@feedbacks`
- Falsch
- Falsch
- Richtig, das wissen wir noch nicht.





---
## Stichproben

```yaml
type: NormalExercise 
xp: 100 
key: 19e43fd635   
```

Wir müssen zuerst die Stichproben auf Normalverteilung prüfen. Dazu benutzen wir wieder den Shapiro-Wilk-Test (`shapiro.test`). 

`@instructions`
Prüfe zunächst, ob die Stichprobe für Gruppe 1 (erstes Schlafmittel) normalverteilt ist. Prüfe dann, ob die Stichprobe für Gruppe 2 (zweites Schlafmittel) normalverteilt ist.

`@hint`
Bilde ein subset, wähle die Spalte 'extra' aus und wende darauf shapiro.test an.

`@pre_exercise_code`

```{r}

```

`@sample_code`

```{r}

```

`@solution`

```{r}
shapiro.test(subset(sleep,group==1)$extra)
shapiro.test(subset(sleep,group==2)$extra)
```
`@sct`

```{r}

```







---
## Normalverteilung

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 0e65ae44fa   
```

Beide p-Werte sind größer als 0,05. Dürfen wir also Normalverteilung annehmen?


`@hint`
Die Nullhypothese nimmt an, dass eine Normalverteilung vorliegt. Sie wird nur abgelehnt, wenn p kleiner als 0,05 ist.





`@possible_answers`
- [Ja]
- Nein

`@feedbacks`
- Richtig
- Falsch





---
## Varianzhomogenität

```yaml
type: NormalExercise 
xp: 100 
key: d3b2073af6   
```

Die Stichproben sind normalverteilt, wir dürfen also `t.test()` verwenden. Um den t-Test zu rechnen, müssen wir noch prüfen, ob Varianzhomogenität vorliegt. Liegt diese nicht vor, rechnet `t.test()` automatisch den Welch-Test, der diese Voraussetzung nicht benötigt. Bei gepaarten t-Tests ist dies eigentlich nicht nötig, da die Varianzhomogenität keine Rolle spielt, jedoch prüfen wir hier beispielhaft trotzdem auf Varianzhomogenität.
Auf den Hilfeseiten hast du vielleicht schon mal gelesen, dass man eine '**formula**' angeben kann. Eine einfache 'formula' bzw. Formel besteht aus der Angabe von zwei Variablen und einer Tilde (~). In vielen Fällen ist das die `abhängige Variable ~ unabhängige Variable` (oder auch Gruppierungsvariable). Dabei ist die Reihenfolge wichtig! Du erhältst andere (oder gar keine) Ergebnisse, wenn du die beiden Variablen vertauschst.

`@instructions`
Überprüfe die beiden Gruppen auf Varianzhomogenität. Du kannst das mit der Funktion `leveneTest()` aus dem Paket `car` machen. Gib als ersten Parameter die `formula` an und als zweiten Parameter den Datensatz `sleep`.

`@hint`
Kleiner Tipp: die Formel ist `extra~group`

`@pre_exercise_code`

```{r}
library(car)
```
`@sample_code`

```{r}

```

`@solution`

```{r}
leveneTest(extra~group,sleep)
```
`@sct`

```{r}

```







---
## Insert exercise title here

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 7921f81915   
```

Wir haben einen p-Wert größer als 0.05. Dürfen wir var.equal=TRUE setzen?


`@hint`






`@possible_answers`
- [Ja]
- Nein

`@feedbacks`
- Genau!
- Falsch



