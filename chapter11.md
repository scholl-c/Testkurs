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
library(readr)
mathetest <- read_delim("https://assets.datacamp.com/production/repositories/3196/datasets/ade54dc40604e210c38ef19defcf24a3e6d92717/mathetest.csv", "\t", escape_double = FALSE, trim_ws = TRUE)
```

`@sct`

```{r}
ex() %>% check_mc(1,feedback_msgs=c("Super erkannt!","Nein","Falsch","Falsch"))
```

---

## Aggregieren

```yaml
type: NormalExercise 
xp: 100 
key: ac1512248d   
```


Nun möchten wir aber ein Balkendiagramm (`ggplot2`) mit dem Durchschnittswert erstellen. Können wir einfach `ggplot(mathetest,aes(x=Raucher,y=Test1))+geom_col()` benutzen? Nein, denn `ggplot` weiß auf diese Weise nicht, dass wir gerne den Mittelwert für _Raucher=ja_ und _Raucher=nein_ verwenden möchten. `ggplot()` würde uns nur die ersten beiden Werte, die es in der Tabelle für jeweils einen Raucher und einen Nicht-Raucher findet, plotten, und nicht den Mittelwert aller Raucher bzw. aller Nicht-Raucher.

Dabei kann dir die Funktion `aggregate()` helfen. `aggregate()` nimmt drei Parameter: 
- die formula
- der Datensatzname
- die Funktion mit der aggregiert wird. 

Der dritte Parameter kann z.B. _mean_, _sum_ oder _median_ sein. Die _formula_ ist dabei identisch zu der _formula_ bei der Erstellung des Boxplot.


`@instructions`
Wende `aggregate()` so an, dass du den Mittelwert (_mean_) im Ergebnis des ersten Tests der Gruppe der Raucher und der Gruppe der Nicht-Raucher ausgegeben bekommst. Speichere die aggregierten Daten in `rauchertest1`.

`@hint`
Denke daran, dass die formula der des Boxplots entspricht.

`@pre_exercise_code`

```{r}
library(readr)
mathetest <- read_delim("https://assets.datacamp.com/production/repositories/3196/datasets/ade54dc40604e210c38ef19defcf24a3e6d92717/mathetest.csv", "\t", escape_double = FALSE, trim_ws = TRUE)
library(ggplot2)
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
ex() %>% check_function("aggregate") %>% {
  check_arg(.,"formula") %>% check_equal(eval=FALSE)
  check_arg(.,"data") %>% check_equal(eval=FALSE)
  check_arg(.,"FUN") %>% check_equal(eval=FALSE)
}  %>%
check_object("rauchertest1") %>% check_equal()
```

---

## Balkendiagramm mit zwei Gruppen

```yaml
type: NormalExercise 
xp: 100 
key: d2f14f36e8   
```


Nun kannst du ein einfaches Balkendiagramm (`ggplot2`) erstellen, dass das durchschnittliche Ergebnis des ersten Tests für beide Gruppen (Raucher, Nicht-Raucher) zeigt.


`@instructions`
Erstelle das Balkendiagramm, denke an `+geom_col()`

`@hint`
Nutze das eben erstellte aggregierte Datenset.

`@pre_exercise_code`

```{r}
library(readr)
mathetest <- read_delim("https://assets.datacamp.com/production/repositories/3196/datasets/ade54dc40604e210c38ef19defcf24a3e6d92717/mathetest.csv", "\t", escape_double = FALSE, trim_ws = TRUE)
rauchertest1 <- aggregate(Test1~Raucher,mathetest,mean)
library(ggplot2)
```

`@sample_code`

```{r}

```


`@solution`

```{r}
ggplot(rauchertest1,aes(x=Raucher,y=Test1))+geom_col()
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

---

## Gruppiertes Balkendiagramm

```yaml
type: MultipleChoiceExercise 
xp: 50 
key: 4098eb419b   
```


Wunderbar! Du siehst, dass die Raucher im ersten Test durchschnittlich besser abgeschnitten haben. Wenn du nun nicht nur die Ergebnisse des ersten Tests, sondern auch der anderen Tests vergleichen möchtest, brauchst du ein gruppiertes Balkendiagramm.

**Deine Aufgabe:** Nimm dir ein Blatt und skizziere, wie ein gruppiertes Balkendiagramm, das die durchschnittlichen Ergebnisse der Raucher bzw. Nicht-Raucher in allen drei Tests vergleicht, aussehen könnte.

Welche Ausprägung der x-Achse wäre hier am Sinnvollsten?


`@instructions`
- Raucher (ja,nein)
- [Tests(Test1,Test2,Test3)]

`@hint`
Du möchtest die Raucher mit den Nicht-Rauchern gut vergleichen können.

`@pre_exercise_code`

```{r}
library(readr)
mathetest <- read_delim("https://assets.datacamp.com/production/repositories/3196/datasets/ade54dc40604e210c38ef19defcf24a3e6d92717/mathetest.csv", "\t", escape_double = FALSE, trim_ws = TRUE)
library(ggplot2)
```

`@sct`

```{r}
ex() %>% check_mc(2,feedback_msgs = c("Überlege nochmal","Ja genau!"))
```

---

## Gruppiertes Balkendiagramm mit ggplot2

```yaml
type: TabExercise 
xp: 100 
key: 37025434e0   
```


Nun haben wir das Problem, dass Test1, Test2 und Test3 verschiedene Spalten sind. Wir müssen ggplot allerdings eine Variable mit genau diesen Ausprägungen geben, wenn wir x festlegen. Es gibt dafür eine einfache Lösung. Und zwar wandeln wir das Format um, sodass Test1, Test2 und Test3 als Ausprägung in einer Spalte stehen. Wenn du das jetzt noch nicht verstehst, du wirst gleich sehen, wie es funktioniert.


`@pre_exercise_code`

```{r}
library(ggplot2)
library(reshape2)
library(readr)
mathetest <- read_delim("https://assets.datacamp.com/production/repositories/3196/datasets/ade54dc40604e210c38ef19defcf24a3e6d92717/mathetest.csv", "\t", escape_double = FALSE, trim_ws = TRUE)
```

***



```yaml
type: NormalExercise 
xp: 20 
key: a3fc2bff2f   
```





`@instructions`
Die Funktion heißt `melt()` und stammt aus dem `reshape2`-Paket. Diese wandelt das Format unseres Datensatzes in ein Long-Format um. Wende nun die Funktion `melt()` auf unseren Datensatz `mathetest` an und speichere das Ergebnis in `melted`.

`@hint`


`@sample_code`

```{r}

```


`@solution`

```{r}
melted <- melt(mathetest)
```

`@sct`

```{r}
ex() %>% check_function("melt") %>% check_object("melted") %>% check_equal()
```


***



```yaml
type: NormalExercise 
xp: 20 
key: fc15f39f80   
```





`@instructions`
Der Informationsgehalt von `melted` ist identisch zum ursprünglichen Datensatz, lediglich das Format hat sich geändert. Schau dir `melted` an, nutze dafür die Funktion `head()`

`@hint`


`@sample_code`

```{r}

```


`@solution`

```{r}
head(melted)
```

`@sct`

```{r}

```



***



```yaml
type: NormalExercise 
xp: 20 
key: 812b29ad7b   
```





`@instructions`
Nun müssen wir wieder aggregieren, denn wir möchten einen Vergleich der Durchschnittswerte der Testergebnisse zwischen den beiden Gruppen vergleichen. Und zwar möchten wir den Durchschnitt (mean) der Testergebnisse (value) sowohl nach Raucher als auch nach Nummer des Tests (variable) berechnen. Du brauchst auch hier wieder eine formula. Diese besteht jedoch aus zwei Gruppierungsvariablen (Raucher, variable) die mit einem + verbunden werden. Damit bilden sie die rechte Seite der Tilde. Aggregiere und speichere den Datensatz in `raucheralletests`.

`@hint`
Benutze die Funktion `aggregate()` und übergib die richtige Formel, den Datensatz `melted` und die Funktion `mean` als Parameter.

`@sample_code`

```{r}

```


`@solution`

```{r}
raucheralletests <- aggregate(value~Raucher+variable,melted,mean)
```

`@sct`

```{r}

```



***



```yaml
type: NormalExercise 
xp: 20 
key: 03b431382d   
```





`@instructions`
Nun haben wir die Daten so aufbereitet, dass sie sich als gruppiertes Balkendiagramm plotten lassen. Erstelle dieses Balkendiagramm mit `ggplot2`. Nutze `+geom_bar(stat='identity', position='dodge')` um ein gruppiertes Balkendiagramm erstellen zu lassen. Gib die Variablen für x und y richtig an, sodass wir pro Test sehen können, ob Raucher oder Nicht-Raucher besser abgeschnitten haben. Gib ebenso `fill=Raucher` für die Bildung der Gruppen an. Der Parameter `group` ist so nicht nötig.

`@hint`


`@sample_code`

```{r}

```


`@solution`

```{r}
ggplot(raucheralletests,aes(x=variable,y=value,fill=Raucher))+geom_bar(stat="identity",position="dodge")
```

`@sct`

```{r}

```



***



```yaml
type: MultipleChoiceExercise 
xp: 20 
key: 06981c74ef   
```





`@instructions`
Haben die Raucher immer durchschnittlich besser abgeschnitten?

`@hint`


`@sct`

```{r}

```



---

## Facettieren

```yaml
type: TabExercise 
xp: 100 
key: 2f86bddb5a   
```


Wenn zwei, drei große Gruppen hinsichtlich mehrerer verschiedener Aspekte verglichen werden sollen, kann man das Facettieren nutzen. Die Option `facet_wrap(~var)` kann zur ggplot-Grafik hinzugefügt werden. Ersetze `var` durch die Gruppierungsvariable. Für deinen Datensatz bedeutet das, dass du zwei Spalten mit jeweils unterschiedlichen Gruppierungsvariablen benötigst.
Letzendlich handelt es sich dabei nur um eine weitere Möglichkeit Gruppen in Diagrammen darzustellen. Um dies einmal auszuprobieren, haben wir das Dataset `mathetest` zweimal umstrukturiert mit `melt()` und danach einmal aggregiert. Wir erhalten das Datenset `grouped`. Nun werden wir die Daten nutzen.


`@pre_exercise_code`

```{r}
library(readr)
grouped <- read_csv("https://assets.datacamp.com/production/repositories/3196/datasets/c10445a54acbf03ddab878c0e17978e75e5fe6b6/grouped.csv")
library(ggplot2)
```

***



```yaml
type: NormalExercise 
xp: 35 
key: 0f09db7e26   
```





`@instructions`
Konstruiere ein Balkendiagramm, das je Test die durchschnittlichen Ergebnisse der Teilnehmer vergleicht. Die Facetten sollen die verschiedenen Tests sein, die Balken stellen die Ergebnisse der Raucher/Nicht-Raucher und Langschläfer/Frühaufsteher dar. Je nach Frühaufsteher oder Langschläfer, Raucher oder Nicht-Raucher sollen sich die Balkenfarben unterscheiden (benutze dafür die Angabe fill).

`@hint`
Benutze das Datenset `grouped`. Gib erst `+geom_bar()` an und dann `+facet_wrap()`.

`@sample_code`

```{r}

```


`@solution`

```{r}
ggplot(grouped,aes(x=variable2,y=value,fill=value2))+geom_bar(stat="identity",position="dodge")+facet_wrap(~variable)
```

`@sct`

```{r}

```



***



```yaml
type: MultipleChoiceExercise 
xp: 35 
key: bf57b500a7   
```





`@instructions`
Wenn du davon ausgehst, dass Langschläfer weniger gut mit Tests zu früher Stunde 
  umgehen können und daher schlechter abschneiden als die Frühaufsteher, was kannst du dann 
  über den dritten Test im Vergleich zu dem ersten Test sagen? (rein spekulativ)

`@hint`


`@sct`

```{r}

```



***



```yaml
type: MultipleChoiceExercise 
xp: 30 
key: 6d52f0e0dd   
```





`@instructions`
Könnte dieser Unterschied zwischen Langschläfern und Frühaufstehern auch 
  rein zufällig zustande gekommen sein?

`@hint`


`@sct`

```{r}

```



---

## Clustern

```yaml
type: TabExercise 
xp: 100 
key: c0d9fe48b0   
```


Bisher waren uns die Gruppen bekannt und wir konnten die Daten nach den Variablen entsprechend gruppieren. Wenn du allerdings Daten erhebst, um dann Gruppen zu bilden, nennt sich das **Clustering**. Wir bilden Gruppen und ordnen unsere Daten den Gruppen zu, das Ganze aber nach der Erhebung der Daten und mit Hilfe von Algorithmen.

Ein Algorithmus dafür nennt sich _k-means_. Eine entsprechende Funktion namens `kmeans` findet sich im Paket `cluster`. Das Paket haben wir bereits geladen, die Funktion steht zur Verfügung. Der Datensatz `agriculture` stammt ebenfalls aus dem Paket und besteht aus dem Bruttosozialprodukt pro Kopf (x) und dem Anteil der in der Landwirtschaft arbeitenden Bevölkerung (y) verschiedener Länder in Europa. Wir versuchen nun, die Länder zu gruppieren.


`@pre_exercise_code`

```{r}
library(cluster)
library(ggplot2)
```

***



```yaml
type: NormalExercise 
xp: 25 
key: d5af1c6f91   
```





`@instructions`
Wende den kmeans-Algorithmus auf diesen Datensatz an. `kmeans()` verlangt zwei Parameter. Der erste Parameter spezifiziert den Datensatz (hier `agriculture`) und der zweite Parameter legt die Anzahl der Cluster d.h. Gruppen fest, die man bilden möchte. Die Anzahl der Gruppen kann man auch algorithmisch bestimmen lassen, wir werden hier, weil es einfacher ist, versuchen, die Anzahl der Gruppen festzulegen. Wir versuchen drei Gruppen zu bilden. Speichere das Ergebnis in der Variable `p.cluster`.

`@hint`
Der erste Parameter ist `agriculture`, der zweite Parameter ist `3`

`@sample_code`

```{r}

```


`@solution`

```{r}
p.cluster <- kmeans(agriculture,3)
```

`@sct`

```{r}

```



***



```yaml
type: NormalExercise 
xp: 25 
key: 8a5c7e3843   
```





`@instructions`
Wir möchten die Cluster in einer Grafik darstellen. Dazu müssen wir zunächst `p.cluster$cluster` mit `as.factor()` in Faktoren umwandeln. Mach das mal.

`@hint`
Überschreibe `p.cluster$cluster` mit den in Faktoren umgewandelten `p.clluster$cluster`

`@sample_code`

```{r}

```


`@solution`

```{r}
p.cluster$cluster <- as.factor(p.cluster$cluster)
```

`@sct`

```{r}

```



***



```yaml
type: NormalExercise 
xp: 25 
key: dcf1a66d2b   
```





`@instructions`
Nun kann eine Grafik erstellt werden, die die Zugehörigkeit zu den Gruppen visualisiert.

`@hint`


`@sample_code`

```{r}
ggplot(agriculture, aes(x, y, label = rownames(agriculture))) + 
  scale_fill_discrete(name = "Cluster") +
  geom_label(aes(fill = p.cluster$cluster), colour = "white", 
             fontface = "bold", size=2)
```

`@solution`

```{r}
ggplot(agriculture, aes(x, y, label = rownames(agriculture))) + 
  scale_fill_discrete(name = "Cluster") +
  geom_label(aes(fill = p.cluster$cluster), colour = "white", 
             fontface = "bold", size=2)
```

`@sct`

```{r}

```



***



```yaml
type: MultipleChoiceExercise 
xp: 25 
key: 24484f91fc   
```





`@instructions`
Welche Länder wurden nicht derselben Gruppe zugeordnet? Du weißt nun, wie du mit Gruppen in statistischen Erhebungen umgehen kannst.

`@hint`


`@sct`

```{r}

```


