
# Nadpis 1. urovne -------------------------------------------------------------
# Nadpis 1. urovne ####

## Nadpis 2. urovne ####

### Nadpis 3. urovne ----

# Toto je muj prvni komentar
# Toto je muj...

1+1

1+1 2+2
1+1; 2+2

## Prvni kod ----

objekt_cislo <- 5
objekt_cislo

objekt_cislo2 = 6

objekt_cislo3 -> 7
7 -> objekt_cislo3

objekt_cislo3

print(objekt_cislo3)

class(7)
typeof(7)

class(7.8791335)
typeof(7.6873)

7L
class(7L)
typeof(7L)

7.2L
class(7.2L)

45*9/88+99-77
45*9/(88+99)-77

2^2
10^(1/7)

factorial(3)
factorial(563)
7/0
factorial(69)

# Text

"Ahoj"

class("Ahoj")
typeof("Ahoj")

"Ahoj"
'Ahoj'

"Ahoj jak se máš? "Dobře""
"Ahoj jak se máš? 'Dobře'"

paste("Ahoj", "jak se máš?")
paste("Ahoj", "jak se máš?", sep = ", ")

paste0("Ahoj", "jak se máš?")
paste("Ahoj", "jak se máš?", sep = "")


objekt_text <- "Ahoj"

objekt_text + 1
objekt_cislo2 + 5
objekt_cislo + objekt_cislo3

# Vektor --------------------------------------------------------

c()

c(4, 2, 7)
c("A", "B", "C")

vektor_text <- c("A", "B", "C")
vektor_cislo <- c(4, 2, 7)
vektor_mix <- c(4, "A")

vektor_mix[2]

1:3
vektor_text[2:3]

1:-5
1:0

vektor_text[-1]
vektor_text[-1:-5]
vektor_text[-(2:3)]

vektor_text[-1]
vektor_text

vektor_text <- vektor_text[-1]
vektor_text

# Scitani vektoru
vektor_cislo <- c(4, 2, 7)
vektor_cislo2 <- c(2, 2, 2)

vektor_cislo * 2
vektor_cislo^2

vektor_cislo + vektor_cislo2

vektor_cislo3 <- c(2, 2, 2, 3)
vektor_cislo + vektor_cislo3

vektor_cislo4 <- c(2, 2, 2, 3, 3, 3)
vektor_cislo + vektor_cislo4

vektor_cislo4[c(2, 5)]

# Matice ----

matrix()

NA
TRUE
FALSE
T
F
NULL

matrix(data = c(56, 42, 25, 34, 7, 8))
matrix(data = c(56, 42, 25, 34, 7, 8), nrow = 2)

matrix(data = c(56, 42, 25, 34, 7, 8), 
       nrow = 2, 
       byrow = TRUE)

matice1 <- matrix(data = c(56, 42, 25, 34, 7, 8), 
                  nrow = 2, 
                  byrow = TRUE)
matice1
View(matice1)

matice2 <- matrix(data = 1:1000, 
                  nrow = 2, 
                  byrow = TRUE)


matice1[2,2]
matice1[2, ]
matice1[ , 2]
matice1[1:2, 2:3]
matice1[, 2:3]

matice1[, -2]
matice1[, c(1, 3)]

matice3 <- matrix(data = c(56, 42, 25, "TEXT", 7, 8), 
                  nrow = 2,
                  ncol = 3,
                  byrow = TRUE)

#  Tabulka - Data.frame ----

data.frame(sloupec_1 = c(42, 34, 7, 8, 9),
           modry_sloupec = c("svetle", "tmave", "azurova", "Tyrkysová", "Akvamarínová"))

dataframe1 <- data.frame(sloupec_1 = c(42, 34, 7, 8, 9),
                         modry_sloupec = c("svetle", "tmave", "azurova", "Tyrkysová", "Akvamarínová"))

dataframe1


mtcars
rownames(mtcars)
colnames(mtcars)

rownames(dataframe1)
colnames(dataframe1)

dataframe1[5, 2]
dataframe1[, 2]
dataframe1[3, ]

dataframe1[, "modry_sloupec"]
dataframe1[, c("modry_sloupec", "sloupec_1")]
dataframe1[c(1, 3, 5), c("modry_sloupec", "sloupec_1")]

dataframe1[, "modry_sloupec"]
dataframe1$sloupec_1
dataframe1$modry_sloupec

sum(dataframe1[, "sloupec_1"])
sum(dataframe1$sloupec_1)
sum(dataframe1$modry_sloupec)

dataframe2 <- data.frame(sloupec_1 = c(42, 34, 7, 8, 9),
                         modry_sloupec = c("svetle", "tmave", "azurova", "Tyrkysová", "Akvamarínová"),
                         "25" = c(1:5),
                         '25' = c(1:5),
                         `25` = c(1:5),
                         `sloupec s mezerou` = 5:1,
                         `český sloupec` = 10:6
                         )

dataframe2

dataframe2[, "25"]
dataframe2[, "X25"]


dataframe3 <- data.frame(sloupec_1 = c(42, 34, 7, 8, 9),
                         modry_sloupec = c("svetle", "tmave", "azurova", "Tyrkysová", "Akvamarínová"),
                         "25" = c(1:5),
                         '25' = c(1:5),
                         `25` = c(1:5),
                         `sloupec s mezerou` = 5:1,
                         `český sloupec` = 10:6,
                         check.names = FALSE)
dataframe3

dataframe3[, "25"]
dataframe3$`sloupec s mezerou`

mtcars[1:3, 3:6]

names_to_select <- colnames(mtcars)[3:6]

mtcars[1:3, names_to_select]

mtcars[1:3, colnames(mtcars)[3:6][1:2]]


str(dataframe3)
str(matice3)
str(vektor_cislo2)

# List
list()

list(prvni_list = 1)

list(prvni_list = 1,
     druhy_list = c(42, 34))

list(prvni_list = 1,
     druhy_list = c(42, 34),
     treti_list = matrix(1:10, nrow = 5),
     list_tabulka = data.frame(sl1 = 1:3,
                               sl2 = 3:1)
     )

nas_list <- list(prvni_list = 1,
                 druhy_list = c(42, 34),
                 treti_list = matrix(1:10, nrow = 5),
                 list_tabulka = data.frame(sl1 = 1:3,
                                           sl2 = 3:1)
)

nas_list$prvni_list
nas_list$treti_list[5, 2]

nas_list[["prvni_list"]]
nas_list[["list_tabulka"]]
nas_list[[3]]
nas_list[[4]]
nas_list[["novy_list"]] <-22
nas_list[["novy_list2"]] <- nas_list
print(nas_list)
nas_list$prvni_list <- NULL
test_tabulka <- data.frame(mlceni = c("dalsi mlceni","jeste vic mlceni"),
                          pokus = c(1,2))
test_tabulka
test_tabulka
rbind(test_tabulka,test_tabulka)
cbind(test_tabulka,test_tabulka)
nas_list2  = list(t1 = test_tabulka,t2 = test_tabulka,t3 = test_tabulka)
nas_list2
do.call(rbind,nas_list2)
unlist(nas_list)
