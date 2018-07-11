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
mathetest <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/ade54dc40604e210c38ef19defcf24a3e6d92717/mathetest.csv",sep=".")
```


`@sct`

```{r}
test_mc(1,"Super erkannt!","Nein","Falsch","Falsch")
```




