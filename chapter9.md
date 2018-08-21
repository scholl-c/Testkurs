---
title: 'Funktionen und Schleifen'
---

## Durchschnitt aller Spalten

```yaml
type: NormalExercise 
xp: 100 
key: 1727563e05   
```


Wir arbeiten zunächst mit dem Datensatz `cars` aus dem Paket `datasets`. Das sind Daten aus den 1920er Jahren, die die Geschwindigkeit und den Bremsweg von Autos enthalten. Wir möchten wissen, was die durchschnittliche Geschwindigkeit (in Meilen pro Stunde) und der durchschnittliche Bremsweg (in _feet_) ist. Die beiden Variablen sind jeweils in den Spalten `speed` und `dist` festgehalten.


`@instructions`
Berechne die Durchschnittswerte, in dem du den Datensatz an `colMeans()` übergibst.

`@hint`
Da du den Durchschnitt der einzigen beiden Spalten berechnen möchtest, musst du keine Spalten extra spezifieren, sondern übergibst den Datensatz als solches.

`@pre_exercise_code`

```{r}
library(datasets)
```


`@sample_code`

```{r}

```


`@solution`

```{r}
colMeans(cars)
```


`@sct`

```{r}
ex() %>% check_function("colMeans") %>% check_result() %>% check_equal()
```


`@possible_answers`


`@feedback`


---

## Summe aller Spalten

```yaml
type: NormalExercise 
xp: 100 
key: 01dd6ee727   
```


Die Funktion erspart dir also, das per einzelne Befehle zu berechnen. Möchtest du nur eine bestimmte Spalte berechnen, kannst du dies zum Beispiel mit `colMeans(cars$dist)` oder auch `colMeans(cars[,c('speed','dist')])` angeben. Eine andere Funktion, die analog wie `colMeans()` funktioniert, nennt sich `colSums()`. Damit kannst du die Summe der Spalten berechnen.


`@instructions`
In diesem Beispiel macht das wenig Sinn, aber wir machen das trotzdem mal. Benutze `colSums()` und berechne somit die Summe der Bremswege und Geschwindigkeiten (macht keinen Sinn!)

`@hint`
Benutze `colSums()` wie du im vorherigen Beispiel `colMeans()` benutzt hast

`@pre_exercise_code`

```{r}
library(datasets)
```


`@sample_code`

```{r}

```


`@solution`

```{r}
colSums(cars)
```


`@sct`

```{r}
ex() %>% check_function("colSums") %>% check_result() %>% check_equal()
success_msg("Damit hast du jetzt zwei sehr einfache Funktionen kennengelernt, die dir sehr viel Arbeit ersparen können. Es gibt auch die Möglichkeit, das auf Zeilen auszuführen, siehe dazu rowMeans() und rowSums().")
```


`@possible_answers`


`@feedback`


---

## Modus

```yaml
type: PureMultipleChoiceExercise 
xp: 50 
key: 62397fee04   
```


Was berechnet der Modus?


`@instructions`


`@hint`
Was vermutest du aufgrund des Ergebnisses in der vorherigen Frage? Welche Antwortmöglichkeit kannst du dadurch ausschließen?

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
- [Den häufigsten Wert einer Zahlenreihe]
- Den mittleren Wert einer sortierten Zahlenreihe
- Den größten Wert einer Zahlenreihe

`@feedback`
- Ja!
- Nein
- Nein

---

## Eigene Funktion auf alle Spalten anwenden

```yaml
type: NormalExercise 
xp: 100 
key: e1f00c619a   
```


Vielleicht möchtest du abseits von Summe oder arithmetischem Mittelwert noch den Median oder Modus der verschiedenen Spalten berechnen? Vielleicht möchtest du auch etwas ganz anderes mit jeder Spalte machen? Kein Problem! Deine Individualität kannst du ausleben, in dem du eine kleine Funktion schreibst und mit `lapply` auf die Spalten des Datensatzes anwendest.

Nun möchtest du den Modus für jede Spalte berechnen. `lapply()` wendet eine Funktion auf die Spalten eines Datensatzes, oder wenn keine Spalten spezifiziert wurden auf alle Spalten eines Datensatzes an. Du kannst `lapply()` nach dieser Vorlage benutzen: `lapply(datensatz,funktion)`


`@instructions`
Berechne damit den Modus für alle Spalten in `cars`. Die Funktion namens `Mode`, die den Modus berechnet, stellen wir dir bereit.

`@hint`
Du musst keine Spalten spezifizieren und verwende unsere Funktion namens `Mode`

`@pre_exercise_code`

```{r}
library(datasets)
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
```


`@sample_code`

```{r}

```


`@solution`

```{r}
lapply(cars,Mode)
```


`@sct`

```{r}
ex() %>% check_function("lapply") %>% check_equal()
```


`@possible_answers`


`@feedback`


---

## Alternative sapply

```yaml
type: NormalExercise 
xp: 100 
key: 82e4778553   
```


Alternativ kannst du auch `sapply()` nutzen. Der einzige Unterschied liegt in der Ausgabe.


`@instructions`
Sieh dir das an, in dem du analog zum vorherigen Beispiel statt `lapply()` `sapply()` anwendest.

`@hint`


`@pre_exercise_code`

```{r}
library(datasets)
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
```


`@sample_code`

```{r}

```


`@solution`

```{r}
sapply(cars,Mode)
```


`@sct`

```{r}
ex() %>% check_function("sapply") %>% check_result() %>% check_equal()
```


`@possible_answers`


`@feedback`


---

## Eigene Funktionen schreiben

```yaml
type: TabExercise 
xp: 100 
key: ca92ba91ee   
```


Manchmal ist das aber nicht ganz das, was du brauchst. Für Individualisten gibt es die Möglichkeit Funktionen und Schleifen selbst zu schreiben. R bietet dazu die gängigen Lösungen an, die du auch in anderen Programmiersprachen findest. Dazu zählen zum Beispiel _if-Konstrukte_, _for-Schleifen_ und das Schlüsselwort _function_.

**Beachte** aber: Viele gängige Funktionen wurden bereits realisiert und in Paketen bereitgestellt und für viele Anwendungsfälle gibt es schon einfache Lösungen. Das sei gesagt, bevor du komplexe Schleifen und Abfragen baust.

Wir stellen uns nun vor, wir haben ein größeres Datenset und möchten auf Normalverteilung prüfen. Wir möchten, dass wir ausgegeben bekommen 'normalverteilt', wenn die jeweilige Spalte normalverteilt ist und 'nicht normalverteilt' wenn sie es nicht ist. Wir schreiben dazu zuerst eine Funktion, die uns je nach Testergebnis von dem Shapiro-Wilk-Test ausgibt, ob es normalverteilt ist oder nicht und dann wenden wir diese Funktion mit `lapply` auf alle Spalten an.


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}
library(datasets)
```


`@sample_code`

```{r}
# Ergänze diese Funktion, sodass...
# aufgrund von dem Testergebnis (p-Wert) von dem Shapiro-Wilk-Test
# ausgegeben wird, ob der eingegebene Vektor
# normalverteilt ist oder nicht

normalverteilt <- function(x) {
  p <- shapiro.test(x)["p.value"]
  # Ergänze in den Klammern die Bedingung
  if () {
    print("normalverteilt")
  } else {
    # Ergänze die Ausgabe
  }
}
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
key: e742790a65   
```





`@instructions`
Schreibe die Funktion, die entweder 'normalverteilt' oder 'nicht normalverteilt' ausgibt, je nachdem wie der Shapiro-Wilk-Test ausfällt. Ergänze, wie im Kommentar beschrieben, die beiden Zeilen. Der p-Wert ist bereits in einer Variablen gespeichert, sodass du ihn mit den 0.05 vergleichen kannst.

`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
# Ergänze diese Funktion, sodass...
# aufgrund von dem Testergebnis (p-Wert) von dem Shapiro-Wilk-Test
# ausgegeben wird, ob der eingegebene Vektor
# normalverteilt ist oder nicht

normalverteilt <- function(x) {
  p <- shapiro.test(x)["p.value"]
  if (p > 0.05) {
    print("normalverteilt")
  } else {
    print("nicht normalverteilt")
  }
}
```


`@sct`

```{r}
ex() %>% check_fun_def("normalverteilt") %>% {
  check_arguments(.)
  check_call(.,c(34,55,12,1,2,98,66,40)) %>% check_result() %>% check_equal()
  check_call(.,c(1,4,5,3,2,5,4,4,4,4,2,5,4,1,4,3,3)) %>% check_result() %>% check_equal()
  check_body(.) %>% {
  	check_function(.,"shapiro.test")
  	check_if_else() %>% {
      check_cond(.) %>% check_code("p\s*>\s*0?[.]05")
      
   }

  }
}
success_msg("Super gemacht!")
```


`@possible_answers`


`@feedback`



***



```yaml
type: NormalExercise 
xp: 50 
key: 3fe300b96c   
```





`@instructions`
Nun wenden wir unsere Funktion auf die Spalten von `cars` an. Benutze dazu den Befehl `lapply()`.

`@hint`
Das Prinzip ist das gleiche wie unserer Modus-Berechnung.

`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
lapply(cars,normalverteilt)
```


`@sct`

```{r}
ex() %>% check_function("lapply") %>% check_result() %>% check_equal()
```


`@possible_answers`


`@feedback`



---

## Vektorisierung

```yaml
type: TabExercise 
xp: 100 
key: 2f2d3b4af1   
```


Du siehst, dass wir uns hier die Konstruktion einer Schleife über alle Spalten gespart haben. Es kann jedoch Fälle geben, wo du selbst eine Schleife bauen musst. Du kannst dir dazu die Konstrukte mit den Schlüsselwörtern _for_, _while_ oder _repeat_ anschauen.

Sowohl Wiederholungen zu vermeiden als auch deinen Code schneller machen, kann die Vektorisierung leisten. 

Lass uns nun mal ein einfaches Beispiel einer Vektorrechnung betrachten. Klar, könnte man in diesem Mini-Beispiel alle drei Rechnungen auch separat durchführen, aber es gibt sehr viele Beispiele, da lohnt es sich Vektorisierung einzubauen.


`@instructions`


`@hint`


`@pre_exercise_code`

```{r}
v1 <- c(51,402,537)
v2 <- c(24,309,54)
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
xp: 35 
key: 059fb525cd   
```





`@instructions`
Erstelle einen Vektor mit der Verkettungsfunktion `c()`. Gib `v1 <- c(51,402,537)` ein.

`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
v1 <- c(51,402,537)
```


`@sct`

```{r}
ex() %>% check_object("v1") %>% check_equal()
```


`@possible_answers`


`@feedback`



***



```yaml
type: NormalExercise 
xp: 35 
key: 9cdb881b5f   
```





`@instructions`
Gib nun den Vektor v2 mit `v2 <- c(24,309,54)` ein.

`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
v2 <- c(24,309,54)
```


`@sct`

```{r}
ex() %>% check_object("v2") %>% check_equal()
```


`@possible_answers`


`@feedback`



***



```yaml
type: NormalExercise 
xp: 30 
key: 371601568d   
```





`@instructions`
Addiere die Vektoren und speichere das Ergebnis in `v3`.

`@hint`


`@pre_exercise_code`

```{r}

```


`@sample_code`

```{r}

```


`@solution`

```{r}
v3 <- v1+v2
```


`@sct`

```{r}
ex() %>% check_operator("+") %>% check_object("v3") %>% check_equal()
```


`@possible_answers`


`@feedback`


