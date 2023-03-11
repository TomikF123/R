
# První domácí úkol - 4ST110 - 22.2.2023----------------------------------------

# Instrukce k odevzdání:

# - Odevzdávejte úkol do teamu,
# - Stihněte to do 3.3.2023,
# - Předpokládejte, že lidi mají 2 ruce, nohy a oči, jeden nos a počet prstů určitě zvládnete,
# - Když nevíte, tak se zeptejte pana Google.

### 1. Vytvořte objekt pocet_prstu, která bude obsahovat počet prstů všech osob u vás doma a pak ji vytiskněte do konzole.
pocet_lidi <- 5L
pocet_prstu <- 20L * pocet_lidi
print(pocet_prstu)

### 2. Vytvořte objekt pocet_noh, která bude obsahovat počet nohou všech osob u vás doma a pak ji vytiskněte do konzole.
pocet_noh <- pocet_lidi * 2L
print(pocet_noh)

### 3. Vytvořte objekt pocet_nosu, která bude obsahovat počet nosů všech osob u vás doma a pak ji vytiskněte do konzole.
pocet_nosu <- pocet_lidi

### 4. Nevíme kolik máte doma pavouků, někde se schovávají, tak vytvořte objekt pocet_pavouku, jehož hodnota bude neznámá.
pocet_pavouku <- NA

### 5. Odečtěte od pocet_prstu rok vzniku jazyka R.
pocet_prstu - 1993L

### 6. Vynásobte pocet_prstu počtem nohou a vydělte počtem nosů, celý tento výraz umocněte na -1.
((pocet_prstu*pocet_noh)/pocet_nosu)^(-1)

### 7. Vynásobte pocet_prstu počtem nohou a vydělte počtem nosů, celý tento výraz umocněte na 1 000 000 000.
((pocet_prstu*pocet_noh)/pocet_nosu)^(1000000000)

### 8. Vynásobte pocet_prstu počtem nohou a vydělte počtem nosů, celý tento výraz Odmocněte počtem nohou.
((pocet_prstu*pocet_noh)/pocet_nosu)^(1/pocet_noh)

### 9. Spočtěte kolik osob je u vás doma na základě objektu pocet_prstu.
pocet_lidi

### 10. Spočtete logaritmus z pocet_prstu při základě rovnému dni vašeho narození.
log(pocet_prstu,base = exp(2002L))

### 11. Spočtěte kolik máte doma očí a uložte si výsledek do objektu pocet_oci.
pocet_oci <- pocet_lidi*2L

### 12. Za pomoci funkce sečtěte pocet_oci a rok vašeho narození.
(sum(pocet_oci,2002))

### 13. Za pomoci funkce sečtěte pocet_oci, pocet_pavouku a rok vašeho narození (chceme získat jako odpověď číslo).
(sum(pocet_oci,pocet_pavouku,2002))

### 14. Vytvořte objekt moje_domacnost, která bude obsahovat text "Moje domácnost má ".
moje_domacnost <-"moje domácnost má "

### 15. Popište rozdíl mezi výsledky příkazů nchar(moje_domacnost) a length(moje_domacnost)

nchar(moje_domacnost) # vrací počet znaků včetně mezer.
length(moje_domacnost) # vrací počet prvků které náleží objektu. moje_domacnost má jeden prvek a to string => vrací 1

### 16. Z již existujících objektů složte 2 smysluplné věty, jejich zakončení můžete doplnit, nezapomeňte na tečku na konci věty.
paste(moje_domacnost,pocet_lidi,"lidi",sep = " ")

### 17. Rozdělte objekt moje_domacnost na jednotlivá slova
strsplit(moje_domacnost,split = " ")

### 18. Vytvořte vektor domacnost, který bude obsahovat pocet_noh, pocet_prstu, pocet_nosu a vase oblíbené číslo.
domacnost = c(pocet_noh,pocet_prstu,pocet_nosu,69L)

### 19. Z vektoru domacnost vytvořte jeden textový řetězec.
toString(domacnost)

### 20. Přičtěte k vektoru domacnost vektor, který bude obsahovat hodnoty 1 a 20.
domacnost + c(1,2)

### 21. Přičtěte k vektoru domacnost vektor, který bude obsahovat hodnoty 1, 5 a 20.
domacnost + c(1,5,2)
### 22. Vypište první a třetí prvek vektoru domacnost alespoň 3 způsoby.
print(domacnost[1])
print(domacnost[3])

domacnost[c(1,3)]

domacnost[c(-2,-4)]

### 23. Vytvořte vektor, který bude obsahovat 10 krát text "rrrrambajs"
c(paste("rrrrambajs",seq(1,10),sep = ""))


### 24. Vypište druhý prvek vektoru domacnost.
print(domacnost[2])

### 25. Vytvořte vektor, který bude obsahovat celá čísla -7 až +9.
c(seq())
seq(from = -7,to = 9,by = 1)
### 26. Vytvořte vektor, který bude obsahovat čísla 9,14,19, ... až po 55.
c(seq(9,55,by = 5),55)

### 27. Jakého typu a třídy je objekt pocet_noh.
class(pocet_noh)
typeof(pocet_noh)

### 28. Jakého typu a třídy je moje_domacnost.
class(moje_domacnost)
typeof(moje_domacnost)

### 29. Jaké argumenty má funkce sum() a jakého typu případně mohou být? -------
#### argumenty funkce sum mohou být z třídy numeric, takze double, integer, vektory,=ciselne listy atd..

### 30. Vytvořte alespoň 2 úrovňovou strukturu oddělovačů (alá Rstudio) z komentářů k popisu tohoto souboru-----

### Nezapomeňte odevzdat :)/-[
