#WOOD-NT
#CHM4300L
#THIS SCRIPT IS TO OBTAIN A BRADFORD CURVE FROM AN IMPORTED CSV
#THIS SCRIPT IS FREE AND OPEN SOURCE PER GPLv3
#USE ASSUMES IMPLICATIONS OF ACADEMIC AND PROFESSIONAL INTEGRITY
#############################################################3
#BEGIN SCRIPT
#IMPORT DEPENDENCIES
#IMPORT BRADFORD STANDARD FILE
Bstandard <- read.csv(file.choose(),header=TRUE)

#PLOT OF STANDARD WITH LINEAR REGRESSION
plot(Bstandard$X~Bstandard$Y,
     main="Bradford Assay of Bovine Serum Albumin Standard",
     sub="Linear Regression: Y= -.042(X)+.755",
     xlab="[BSA] in mg/mL",
     ylab="A595",
     pch=16 )
abline(lm(Bstandard$X~Bstandard$Y),
       col="red")
#SUMMARY STANDARD
summary(Bstandard)
#USE THIS SUMMARY TO CREATE LINER REGRESSION EQUaTION
summary(lm(Bstandard$X~Bstandard$Y))

#END SCRIPT
##############################################################
