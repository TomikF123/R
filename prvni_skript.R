##### Slide 9 ######

library(ggplot2) ##GGplot for visualization

relative <- matrix(nrow = 20*1000, ncol = 3) #to store the results

for (j in 1:20){
  {
    set.seed(j) #Setting seed for the replicability
    x <- rbinom(1000, 1, 0.3) #Generating 1,000 values from Be(Pi) distribution 
    relative[((j-1)*1000+1):(j*1000),2] <- cumsum(x)/(1:1000) #Calculating series of relative frequencies and saving to column 2
  }
}

relative[, 1] <- rep(1:1000, 20)#Series of numbers from 1 to 1,000 for x-axis; 20 times; saved into column 1
relative[, 3] <- rep(1:20, each = 1000) #Series of numbers from 1 to 20 for distinguishing simulations; each 1,000 times; saved into column 3

relative <- data.frame(relative)

colnames(relative)

ggplot(relative) + geom_line(aes(x = X1, y = X2, col = as.factor(X3))) + #Creating plot
  geom_hline(aes(yintercept = 0.3), col = "red", lwd = 1.5)+ #Line of 0.3
  scale_x_continuous("n")+ #Naming x axis
  scale_y_continuous("Relative frequency" )+#Naming y axis
  scale_color_discrete("Simulation run")+ #Naming legend
  ggtitle("Development of relative frequency with underlying probability 0.3")+ #title
  theme(plot.title = element_text(hjust = 0.5)) #Title position in center

##### Slide 11 ######
Probability <- seq(0, 1, 0.0001)
Odds <- Probability/(1-Probability)
Logit <- log(Odds)

data <- data.frame(Probability, Odds, Logit)

ggplot(data) +   geom_hline(aes(yintercept = 1, lty = "Odds"), col = "black", lwd = 1.25) + 
  geom_hline(aes(yintercept = 0, lty = "Logit"), col = "black", lwd = 1.25) + 
  geom_vline(aes(xintercept = 0.5), lty = 3, col = "black", lwd = 1.25)+
  geom_line(aes(x = Probability, y = Odds, lty = "Odds", col = "Odds"), lwd = 1.5) +
  geom_line(aes(x = Probability, y = Logit, lty = "Logit", col = "Logit"), lwd=  1.5) +
  scale_y_continuous("Odds, logit",limits = c(-10, 10)) + 
  scale_linetype("", "")+
  scale_color_discrete("")+
  ggtitle("Relation of odds, logit and probability")+
  theme(plot.title = element_text(hjust = 0.5)) #Title position in center


##### Slide 20 ######
Priors <- c(0.2, 0.7, 1)
Conditionals <- c(0.5, 0.3, 0.7)

ggplot() + geom_polygon(aes(x = c(0, Priors[1], Priors[1], 0), y = c(0, 0, Conditionals[1], Conditionals[1]),  fill = "Event A"), col = "black", alpha = 0.7)+
  geom_polygon(aes(x = c(Priors[1], Priors[2], Priors[2], Priors[1]), y = c(0, 0, Conditionals[2], Conditionals[2]),  fill = "Event A"), col = "black", alpha = 0.7) +
  geom_polygon(aes(x = c(Priors[2], Priors[3], Priors[3], Priors[2]), y = c(0, 0, Conditionals[3], Conditionals[3]),  fill = "Event A"), col = "black", alpha = 0.7)+
  geom_polygon(aes(x = c(0, Priors[1], Priors[1], 0), y = c(1, 1, Conditionals[1], Conditionals[1])), col = "black", fill = "white", alpha = 0.7)+
  geom_polygon(aes(x = c(Priors[1], Priors[2], Priors[2], Priors[1]), y = c(1, 1, Conditionals[2], Conditionals[2])), col = "black", fill = "white", alpha = 0.7) +
  geom_polygon(aes(x = c(Priors[2], Priors[3], Priors[3], Priors[2]), y = c(1, 1, Conditionals[3], Conditionals[3])), col = "black", fill = "white", alpha = 0.7)+
  scale_x_continuous("Prior probabilities", breaks = Priors, minor_breaks = NULL)+
  scale_y_continuous("Conditional probabilities", breaks = Conditionals,  minor_breaks = NULL)+
  ggtitle("Total Probability Law")+
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_discrete("")

##### Slide 23 ######
Priors <- c(0.2, 0.7, 1)
Conditionals <- c(0.5, 0.3, 0.7)

ggplot() + geom_polygon(aes(x = c(0, Priors[1], Priors[1], 0), y = c(0, 0, Conditionals[1], Conditionals[1]),  fill = "Event B1 and A"), col = "black", alpha = 0.7)+
  geom_polygon(aes(x = c(Priors[1], Priors[2], Priors[2], Priors[1]), y = c(0, 0, Conditionals[2], Conditionals[2]),  fill = "Event B2 and A"), col = "black", alpha = 0.7) +
  geom_polygon(aes(x = c(Priors[2], Priors[3], Priors[3], Priors[2]), y = c(0, 0, Conditionals[3], Conditionals[3]),  fill = "Event B3 and A"), col = "black", alpha = 0.7)+
  scale_x_continuous("Prior probabilities", breaks = Priors, minor_breaks = NULL)+
  scale_y_continuous("Conditional probabilities", breaks = Conditionals, minor_breaks = NULL)+
  ggtitle("Bayes theorem")+
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_discrete("")

