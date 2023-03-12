
# Druhý domácí úkol - 4ST110 - 8.3.2023

# Instrukce k odevzdání:

# - Odevzdávejte úkol do teamu, tam zároveň najdete potřebné soubory,
# - Stihněte to do 17.3.2023,
# - Když nevíte, tak se zeptejte pana Google.


### 1. Vytvořte objekt pocet_prstu, která bude obsahovat počet prstů všech osob u vás doma a na koleji.
pocet_prstu = 100L

### 2. Vytvořte objekt pocet_noh, která bude obsahovat počet nohou všech osob u vás doma a na koleji.
pocet_noh = 10L 

### 3. Vytvořte objekt pocet_nosu, která bude obsahovat počet nosů všech osob u vás doma a na koleji.
pocet_nosu = 5L

### 4. Vytvořte vektor domacnost, který bude obsahovat pocet_noh, pocet_prstu, pocet_nosu a vase oblíbené číslo.
domacnost = c(pocet_noh,pocet_prstu,pocet_nosu,23L)
domacnost

### 5. Rozhodněte podmínkou jestli je vaše domácnost čtyřčlenná.
ctyr_clenna_domacnost = 0
if (pocet_nosu == 4L){
  ctyr_clenna_domacnost = 1}
### 6. Ověřte podmínkou, že počet nohou, nosů, očí a prstů si odpovídá. ------- todo
si_odpovida = sum(domacnost > min(domacnost))/length(domacnost)
### 7. Kolik prvků vektoru domacnost je rovných nebo větších číslu 4?
sum(domacnost >4)
### 8. Kolik prvků vektoru domacnost je rovných nebo větších číslu 4 nebo záporných?
sum(domacnost >= 4,domacnost < 0)
### 9. Vytvořte objekt "super_matice", který bude tvořit čtvercová matice s minimálně 4 řádky, jako čísla zvolte číslice z vašeho oblíbeného datumu a času, případně doplňte dalšími.
super_matice <- matrix(c(1:16),nrow = 4,ncol = 4)
super_matice
### 10. Vytvořte objekt "nej_matice", který bude tvořit matice obsahující hodnoty z vektoru domacnost, rozměr zvolte, tak aby šlo provést maticové násobení s předchozí maticí.
nej_matice  <- matrix(data = domacnost,nrow = 4,ncol = 4)
nej_matice
### 11. K matici "nej_matice" přičtěte 5 a vynásobte ji vektorem domácnost
(nej_matice + diag(5,nrow(nej_matice),ncol(nej_matice)))*domacnost
### 12. Sečtěte matice "super_matice" a "nej_matice".
super_matice + nej_matice
### 13. Proveďte maticové násobení mezi maticemi "super_matice" a "nej_matice".
nej_matice
super_matice
super_matice %*% nej_matice
### 14. V matici "super_matice" sečtě prvky na diagonále.
sum(diag(nej_matice))
### 15. Z matice "super_matice" získejte součty sloupců.
sum(super_matice[1:2,1:2])
sum(super_matice[])
### 16. Vypište počet řádků a počet sloupců "super_matice".
nrow(super_matice)
ncol(super_matice)
### 17. Z matice "super_matice" vyberte prvek na druhém řádku ve třetím sloupci.
super_matice[2,2]
### 18. Z matice "super_matice" vyberte pouze 4. sloupec.
super_matice[1:nrow(super_matice),4]

### 19. Z matice "super_matice" vyberte pouze 1. řádek.
super_matice[1:nrow(super_matice),1]
### 20. Z matice "super_matice" vypočtěte logaritmus o základu e ze součinu všech prvků, které jsou větší než 0.-------------------
x <- super_matice[super_matice>0]
y= 1
for (n in x){
  y = y*n
}
y
### 21. Prozkoumejte strukturu/obsah "super_matice" (funkce: str, summary, class, typeof ...).
typeof(super_matice);str(super_matice);class(super_matice);summary(super_matice)
### 22. Vytvořte data.frame, který bude v prvním sloupci obsahovat vektor textů, který bude mít alespoň 5 prvků a následně alespoň 2 další libovolné sloupce s čísly. Pojmenujte ho moje_data.
moje_data <- data.frame(sloupec1=c("jedna","dva","tři","čtyři","pět"),sloupec2 = c(1,2,3,5,8),sloupec3 = c(13,21,34,55,89))
moje_data
### 23. Prozkoumejte strukturu/obsah moje_data (funkce: str, summary, class, typeof ...).
typeof(moje_data);
str(moje_data);
class(moje_data);
summary(moje_data)
### 24. Vypište názvy sloupců a řádků z moje_data.
colnames(moje_data)
row.names(moje_data)
### 25. Vypište počet řádků a počet sloupců moje_data.
nrow(moje_data)
ncol(moje_data)
### 26. Vyberte z moje_data všechny řádky ve kterých je v druhém sloupci hodnota rozdílná od 8 (pro všechny sloupce).
moje_data$sloupec2[moje_data[2] !=8]
### 27. Vyberte z moje_data všechny řádky ve kterých je v druhém sloupci hodnota (vyberte si nějakou vhodnou), opakujte pro první a třetí sloupec a následně podmínku spojte pomocí nebo a "a".
moje_data[,]
### 28. Z tabulky moje_data získejte součin názvů řádků tabulky.
integer()
### 29. V tabulce moje_data vytvořte dvěma způsoby nový sloupec s libovolným názvem a hodnotami c(2, NA, ...), za  ... doplnte libovolné hodnoty.

### 30. V tabulce moje_data vytvořte nový řádek s vhodnými daty.

### 31. Vytvořte kopii tabulky moje_data s názvem kopie_dat.

### 32. Spojte nejprve po sloupcich a následně po řádcích tabulky moje_data a kopie_dat.

### 33. Vynásobte počet sloupců, řádků a všech záznamů v tabulce.

### 34. Vytvořte list který bude obsahovat
###  jmena jako vektor = ("Jano", "Anna", "Fero", "Lucia", "Milan", "Julia")
###  trida jako string = "2.A"
###  farbaOci jako vektor stringů = ("Modre", "Zelene", "Hnede", "Sive", "Modre","Zelene")
###  sportuje jako vektor booleanů = Ano, Ne, Ano, Ne, Ne, Ano
###  pocetPoznamek jako číselný vektor = (6, 1, 4, 5, 2, 0)
###  moje_data_v_listu jako moje_data 

### 35. Prozkoumejte strukturu/obsah předchozího listu (funkce: str, summary, class, typeof ...).

### 36. Vytiskněte všechny jmena studentů z listu jako vektor.

### 37. Vytiskněte všechny jmena studentů z listu jako část listu.

### 38. Vytiskněte jména těch, kteří sportují.

### 39. Vytvořte prvek listu, který bude obsahovat pohlaví osob.

### 40. Pomocí vektoru pohlaví vytiskněte pouze ženská jména.

### 41. Vyberte z listu jmena "Fero", "Lucia", "Milan" pomocí podmínky s využitím vektoru.

### 42. Zopakujte na tabulce moje_data v listu úkol 26 a 27.

### 43. Z tabulky moje_data v listu vyberte všechny řádky ve kterých se vyskytuje chybějící hodnota.

### 44. Najděte index prvku vektoru pocetPoznamek, který má maximální hodnotu.

### 45. Najděte index prvku vektorupocetPoznamek, který má minimální hodnotu.


### Nezapomeňte odevzdat :)
