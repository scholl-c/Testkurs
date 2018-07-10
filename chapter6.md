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
ds <- read.csv("https://assets.datacamp.com/production/repositories/3196/datasets/c55e85e8c8049dccc84c8b882f7fc7c4c0d80b53/ds.csv")
```
`@sample_code`

```{r}

```

`@solution`

```{r}
duplicated(ds)
```
`@sct`

```{r}

```





