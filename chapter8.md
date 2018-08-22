---
title: 'Test auf Zusammenhänge'
---

## Skalenniveau der Variablen

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: f4519250ed   
```


Wir haben den pro Kopf Konsum von Schokoladentafeln im Jahr und den IQ von Personen erhoben. (Jede Zeile = eine Person) Diese Daten liegen in dem Datensatz `choco` mit den Spaltennamen 'Tafeln' und 'IQ'. Schaue dir einen Ausschnitt der Daten an. Benutze dafür die Funktion `head(choco)`.

Wir können also beispielsweise sagen, dass die erste Person 39 Tafeln Schokolade im Jahr verspeist und einen IQ von 83 hat. Es handelt sich um fiktive Daten, keine echte Erhebung. Trotzdem wollen wir die beiden Variablen korrelieren, um zu sehen, ob es einen statistischen Zusammenhang gibt.

Erfüllen beide Variablen die Voraussetzung der Intervallskaliertheit?


`@instructions`
- [Ja]
- Nein

`@hint`
Auf welchem Skalenniveau sind die Anzahl an verspeisten Schokoladentafel und der Intelligenzquotient?

`@pre_exercise_code`

```{r}
choco <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8fabac37c6b40b6274b29eba130b53d8c7e70b8/choco.csv")
```


`@sample_code`

```{r}

```


`@solution`

```{r}

```


`@sct`

```{r}
ex() %>% check_mc(1,feedback_msgs = c("Ja, richtig, sie sind sind intervallskaliert.","Nein"))
```


`@possible_answers`


`@feedback`


---

## Korrelationen

```yaml
type: TabExercise 
xp: 100 
key: a0ecb44b50   
```


Die Zusammenhänge (**Korrelationen**), die wir im Folgenden berechnen, beziehen sich nur auf die Zusammenhänge von zwei Variablen. Zwei Dinge beschreiben den Zusammenhang - die Stärke und die Form. Die Korrelationskoeffizienten nach Pearson oder Spearman beschreiben die **Stärke des Zusammenhangs**. Sie erkennen allerdings ausschließlich lineare Zusammenhänge. Reine lineare Zusammenhänge sind in 'Je mehr... desto mehr' oder 'Je mehr ... desto weniger' Phrasen zu beschreiben. Die einfachste Form des Zusammenhangs (Regression) ist der lineare Zusammenhang. Mit einer Regressionsanalyse kann man versuchen, Voraussagen zu treffen.


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}
choco <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8fabac37c6b40b6274b29eba130b53d8c7e70b8/choco.csv")
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
key: 07a7ae480e   
```





`@instructions`
Mit der Funktion plot() können wir uns ein Streudiagramm ausgeben lassen. Anhand des Streudiagramms kann man schon leicht erkennen, ob eine Korrelation vorliegen könnte bzw. ob es sich um eine positive oder negative Korrelation handelt.

`@hint`
Die beiden Variablen 'Tafeln' und 'IQ' müssen der Funktion plot() übergeben werden.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
plot(choco$Tafeln,choco$IQ)
```


`@sct`

```{r}
ex() %>% check_function("plot") %>% check_arg("x") %>% check_arg("y") %>% check_equal()
success_msg("Super!")
```


`@possible_answers`


`@feedback`



***



```yaml
type: MultipleChoiceExercise 
xp: 50 
key: a89391793a   
```





`@instructions`
- positive Korrelation
- negative Korrelation

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
ex() %>% check_mc(1,feedback_msgs=c("Ja","Nein"))
```


`@possible_answers`


`@feedback`



---

## Prüfen auf Normalverteilung

```yaml
type: NormalExercise 
xp: 100 
key: 0159166d9f   
```


Bevor wir die Korrelation rechnen dürfen, müssen wir prüfen, ob die Variablen normalverteilt sind. Wir überprüfen das mit dem Shapiro-Wilk-Test. Wenn der p-Wert größer als 0.05 ist, dürfen wir annehmen, dass eine Stichprobe normalverteilt ist.


`@instructions`
Überprüfe zuerst, ob der Schokoladentafelkonsum normalverteilt ist. Nun prüfe, ob auch der IQ unserer Testpersonen normalverteilt ist.

`@hint`
Verwende `shapiro.test()`

`@pre_exercise_code`

```{r}
choco <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8fabac37c6b40b6274b29eba130b53d8c7e70b8/choco.csv")
```


`@sample_code`

```{r}

```


`@solution`

```{r}
shapiro.test(choco$Tafeln)
shapiro.test(choco$IQ)
```


`@sct`

```{r}
ex() %>% check_function("shapiro.test",index=1) %>% check_arg("x") %>% check_equal()
ex() %>% check_function("shapiro.test",index=2) %>% check_arg("x") %>% check_equal()
```


`@possible_answers`


`@feedback`


---

## Welcher Korrelationskoeffizient?

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 5feafa6a5e   
```


Welchen Korrelationskoeffizienten sollten wir folglich benutzen?


`@instructions`


`@hint`
In der Regel wird der Test verwendet, sofern möglich, der für das Skalenniveau geeignet ist bzw. mehr Voraussetzungen hat (und diese alle erfüllt werden)

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
- Spearman-Rangkorrelation
- [Pearson-Korrelation]

`@feedback`
- Darf man, geht aber noch mehr.
- Ja, den sollte man nehmen!

---

## Korrelation berechnen

```yaml
type: TabExercise 
xp: 100 
key: 3b156896e3   
```


Wir berechnen die Korrelation und interpretieren ihre Ergebnisse.


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}
choco <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8fabac37c6b40b6274b29eba130b53d8c7e70b8/choco.csv")
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
xp: 20 
key: b53b297937   
```





`@instructions`
Mit `cor.test()` können wir eine Korrelation berechnen. Wir übergeben dazu unsere beiden Variablen. Berechne den Korrelationskoeffizienten für unser Beispiel.

`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
cor.test(choco$Tafeln,choco$IQ)
```


`@sct`

```{r}
ex() %>% check_function("cor.test") %>% check_result() %>% check_equal()
success_msg("Gut gemacht!")
```


`@possible_answers`


`@feedback`



***



```yaml
type: MultipleChoiceExercise 
xp: 20 
key: bd4fd1e4b3   
```


Liegt eine Korrelation vor?


`@instructions`
- Ja
- Nein

`@hint`
Eine Korrelation liegt vor, wenn der cor-Wert über 0.3 oder unter -0.3 liegt.


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
ex() %>% check_mc(1,feedback_msgs=c("Ja","Nein"))
```


`@possible_answers`


`@feedback`



***



```yaml
type: MultipleChoiceExercise 
xp: 20 
key: 7652c3139a   
```


Wie stark oder schwach ist die Korrelation und liegt eine positive oder negative Korrelation vor?


`@instructions`
- perfekt positiv
- stark positiv
- schwach positiv
- schwach negativ
- stark negativ
- perfekt negativ


`@hint`
Beispielsweise zwischen 0.3 und 0.6 ist schwach positiv, zwischen 0.6 und 1 ist stark positiv, bei 1 perfekt positiv

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
ex() %>% check_mc(2,feedback_msgs=c("Nicht ganz","Ja, genau!","Nicht ganz","Nicht ganz","Nicht ganz","Nicht ganz"))
```


`@possible_answers`


`@feedback`



***



```yaml
type: MultipleChoiceExercise 
xp: 20 
key: b63e9d42cb   
```


Es kann sein, dass eine Korrelation vorliegt, das Ergebnis aber nicht signifikant ist, das heißt, es auch zufällig zustande gekommen sein kann. Ist diese Korrelation signifikant?


`@instructions`
- Ja
- Nein

`@hint`
Beachte den p-Wert

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
ex() %>% check_mc(1,feedback_msgs=c("Genau!","Nein, das war es nicht."))
```


`@possible_answers`


`@feedback`



***



```yaml
type: MultipleChoiceExercise 
xp: 20 
key: 42e7571b42   
```


Wir haben also eine stark positive Korrelation zwischen Schokoladentafelkonsum und dem IQ bei unseren Testpersonen gefunden. Was können wir sagen?


`@instructions`
- Schokolade essen macht schlauer
- Intelligentere Menschen brauchen mehr Schokolade um ihre Denkleistung anzukurbeln
- Schokoladenkonsum hängt mit der Intelligenz zusammen
- Nichts davon

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
ex() %>% check_mc(3,feedback_msgs=c("Pass auf mit Kausalitäten (es könnte auch anders herum sein d.h. wer schlauer ist, isst mehr Schokolade)","Wir kennen keine Begründungen für dieses Ergebnis, das ist nur eine Mutmaßung","Genau, das können wir sagen","Wir haben doch einen positiven Zusammenhang gefunden? Oder zweifelst du etwa dieses Ergebnis an?"))
```


`@possible_answers`


`@feedback`




---

## Spearman-Rangkorrelation

```yaml
type: NormalExercise 
xp: 100 
key: 13cb92af2a   
```


Streng genommen können wir keine der Aussagen machen. Aus einer Korrelation folgt keine **Kausalität**, d.h. wir wissen nicht, ob das eine das andere beeinflusst oder umgekehrt. Es könnte auch sein, dass hier ein dritter uns unbekannter Faktor beides beeinflusst. Zudem müssen wir bedenken, dass darin keine anderen Formen von Schokolade (wie z.B. Pralinen) abdecken. Wir haben nur eine kleine Stichprobe von 30 Personen.

Bitte gehe vorsichtig mit solchen verallgemeinernden Aussagen um und zweifle, wenn du Aussagen dieser Art liest! Du solltest nicht den Entschluss fassen, nun mehr Schokolade zu konsumieren, um in Statistik besser zu werden.

Die Spearman-Rangkorrelation kann mit der gleichen Funktion berechnet werden, nur muss zusätzlich `method='spearman'` angegeben werden.


`@instructions`
Berechne als Übung die Spearman-Rangkorrelation.

`@hint`


`@pre_exercise_code`

```{r}
choco <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8fabac37c6b40b6274b29eba130b53d8c7e70b8/choco.csv")
```


`@sample_code`

```{r}

```


`@solution`

```{r}
cor.test(choco$Tafeln,choco$IQ,method="spearman")
```


`@sct`

```{r}
ex() %>% check_function("cor.test") %>% check_arg("method") %>% check_equal()
```


`@possible_answers`


`@feedback`


---

## Korrelationsmatrix

```yaml
type: NormalExercise 
xp: 100 
key: e83ad4f3bd   
```


Es kann sein, dass du die Korrelation zwischen mehreren Variablen untersuchen möchtest. Auch da musst du alle Variablen auf Normalverteiltheit überprüfen und nachsehen, ob die Korrelationen überhaupt signifikant sind, aber du kannst dir sparen die Korrelationskoeffizienten einzeln zu berechnen - sondern die Datenmatrix mit allen zu untersuchenden Variablen der  Funktion `cor()` übergeben. 

Die Matrix ist an der Diagonalen gespiegelt, weil es keine Rolle spielt, ob du die Anzahl der Schokotafeln mit dem IQ korrelierst oder den IQ mit der Anzahl der Schokoladentafeln. Du erkennst zudem, dass jede Variable mit sich selbst perfekt korreliert, d.h. der Wert liegt bei 1. Auch hier kannst du mit `method='spearman'` angeben, dass z.B. die Spearman-Rangkorrelation verwendet werden soll.


`@instructions`
Berechne die Korrelationsmatrix für unseren Datensatz mit `cor()`.

`@hint`


`@pre_exercise_code`

```{r}
choco <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8fabac37c6b40b6274b29eba130b53d8c7e70b8/choco.csv")
```


`@sample_code`

```{r}

```


`@solution`

```{r}
cor(choco)
```


`@sct`

```{r}
ex() %>% check_function("cor") %>% check_result() %>% check_equal()
```


`@possible_answers`


`@feedback`


---

## Regressionsanalyse

```yaml
type: TabExercise 
xp: 100 
key: 06df13ffe6   
```


Die Regressionsanalyse versucht herauszufinden, um welche Form des Zusammenhangs es sich handelt. Bis jetzt haben wir nur auf lineare Zusammenhänge untersucht. Desweiteren können damit Voraussagen für z.B. die Entwicklung in Zukunft getroffen werden.

Wir können mit `lm()` (lm steht für _linear model_) eine Gerade berechnen lassen und diese dann mit `abline()` auf unser Streudiagramm legen.


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}
choco <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/a8fabac37c6b40b6274b29eba130b53d8c7e70b8/choco.csv")
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
key: 0dcb1617af   
```





`@instructions`
Zeichne dazu zuerst nochmal das Streudiagramm, gib zuerst die Variable für die Schokotafeln an, danach die Variable für den IQ. Gib aber dieses Mal die beiden Variablen als `formula` (d.h. verbunden durch die Tilde ~) an.

`@hint`
Benutze `plot()` für das Streudiagramm. Verwende die Dollar-Schreibweise.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
plot(choco$Tafeln~choco$IQ)
```


`@sct`

```{r}
ex() %>% check_function("plot") %>% check_result() %>% check_equal()
```


`@possible_answers`


`@feedback`



***



```yaml
type: NormalExercise 
xp: 50 
key: ddb29f1399   
```





`@instructions`
Nun lege mit `abline(lm(formula))` die berechnete Gerade über das Streudiagramm. Ersetze `formula` durch die eben verwendete `formula` für das Streudiagramm.

`abline()` funktioniert nur richtig, wenn gerade ein Plot aktiv ist d.h. du vorher `plot()` aufgerufen hast. Andernfalls bekommst du die Fehlermeldung '_plot.new has not been called yet_'

`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
plot(choco$Tafeln~choco$IQ)
abline(lm(choco$Tafeln~choco$IQ))
```


`@sct`

```{r}
ex() %>% check_function("abline") %>% check_function("lm") %>% check_result() %>% check_equal()
success_msg("Du kannst nun Zusammenhänge überprüfen und lineare Regressionsmodelle zeichnen. Andere Formen, wie z.B. polynomiale Regression oder logistische Regression, werden wir in dieser Lektion nicht behandeln.")
```


`@possible_answers`


`@feedback`


