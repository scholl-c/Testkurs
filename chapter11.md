---
  title: "Gruppen vergleichen"
  description: "In vielen Experimenten geht es darum, Gruppen zu vergleichen. In der folgenden Lektion lernst du, wie du die Daten entsprechend auswerten und passende Diagramme erstellen kannst."

---
## Boxplot mit zwei Variablen

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: 96befe4a97   
```

Professor Ratistikus hält ein Seminar zu den Grundlagen der Mathematik, in dem er drei Tests schreiben lässt. Die 36 Studenten in dem Kurs können in jedem der Tests maximal 20 Punkte erreichen. Die Tutorin des Kurses hat festgehalten, welche Studenten chronisch zu spät kamen und welche Studenten in der Pause Zigaretten rauchten. 

> Haben die Raucher und die Langschläfer in den Tests schlechter abgeschnitten?,

 fragt sie sich.
Die vorliegenden Daten findest du in `mathetest`. Die Namen der Studenten sind dabei anonymisiert bzw. durch einen Code ersetzt worden. Als Erstes möchten wir eine Grafik erstellen, die darstellt, wie viele Punkte die Raucher und Nicht-Raucher im ersten Test durchschnittlich erzielt haben. Den passenden Boxplot kannst du dir anzeigen lassen mit...

`@instructions`
- `boxplot(Test1 ~ Raucher,mathetest)`
- `boxplot(Raucher ~ Test1,mathetest)`
- `boxplot(mathetest$Raucher,mathetest$Test1)`
- `boxplot(Test1,Raucher)`

`@hint`
Bedenke, dass die Tilde impliziert, dass wir eine abhängige und eine unabhängige Variable haben. Die Gruppierungsvariable bzw. die abhängige Variable steht auf der rechten Seite der Tilde.

`@pre_exercise_code`

```{r}
mathetest <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/ade54dc40604e210c38ef19defcf24a3e6d92717/mathetest.csv")
```


`@sct`

```{r}
test_mc(1,"Super erkannt!","Nein","Falsch","Falsch")
```






---
## Aggregieren

```yaml
type: NormalExercise 
xp: 100 
key: ac1512248d   
```

Nun möchten wir aber ein Balkendiagramm (`ggplot2`) mit dem Durchschnittswert erstellen. **Können wir einfach `ggplot(mathetest,aes(x=Raucher,y=Test1))+geom_col()` benutzen?** Nein, denn `ggplot` weiß auf diese Weise nicht, dass wir gerne den Mittelwert für _Raucher=ja_ und _Raucher=nein_ verwenden möchten. `ggplot()` würde uns nur die ersten beiden Werte, die es in der Tabelle für jeweils einen Raucher und einen Nicht-Raucher findet, plotten, und nicht den Mittelwert aller Raucher bzw. aller Nicht-Raucher.

Dabei kann dir die Funktion aggregate() helfen. aggregate() nimmt drei Parameter: 
- die formula
- der Datensatzname
- die Funktion mit der aggregiert wird. 

Der dritte Parameter kann z.B. mean, sum oder median sein. Die formula ist dabei identisch zu der formula bei der Erstellung des Boxplot.

`@instructions`
Wende aggregate() so an, dass du den Mittelwert (mean) im Ergebnis des ersten Tests der Gruppe der Raucher und der Gruppe der Nicht-Raucher ausgegeben bekommst. Speichere die aggregierten Daten in `rauchertest1`.

`@hint`
Denke daran, dass die formula der des Boxplots entspricht.

`@pre_exercise_code`

```{r}

```

`@sample_code`

```{r}

```

`@solution`

```{r}
rauchertest1 <- aggregate(Test1~Raucher,mathetest,mean)
```
`@sct`

```{r}

```





