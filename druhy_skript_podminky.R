# Logické hodnoty---------------------------------------------------------------
TRUE
FALSE
typeof(TRUE)
sum(F,F,F,T,T)
# podmínky----------------------------------------------------------------------
1 < 2

2 <= 2

2 == 2
2 != 2
pozdravy = c("zdar","hola","čus")

"hola" == pozdravy
5&5
T & T
T & F
F || T
F | T

xor(T,0)
 f = (c(T,T,F) | c(T,F,F))
 f
 f2 = (c(T,T,F) || c(T,F,F))
 f2
xor(f,f2)

is.integer(5L)
is.data.frame()
is.na(NULL)
is.na(c(1:10, NA,NA,8))
sum(is.na(c(1:10, NA,NA,8)))
sum(!(is.na(c(1:10, NA,NA,8))))

c(1,2,3,4,5,6,7,8,9)[3]
vektor1 = c(1,2,3,4,5,6,7,8,9)
t_vector= vektor1 > 5
t_vector
vektor1[t_vector]
sum(vektor1 >5)
m = mtcars["mpg"] <20
l = mtcars["gear"] <5
mtcars[c(m,l),]
vektor2 <- as.numeric(vektor1)
vektor2
       