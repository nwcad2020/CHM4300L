#CHM4300L
#THIS SCRIPT IS DESIGNED TO INPUT CENTA CATALYSIS ABSORBANCES AND RETURN A GRAPH WITH LINEAR REGRESSION
# THIS SCRIPT IS FREE AND OPEN SOURCE PER GPLV3
#USER ASSUMES ALL IMPLICATIONS OF ACADEMIC AND PROFESSIONAL HONESTY
#
##########################################################################################################
#BEGIN SCRIPT

#IMPORT DATA 
catalysis <- read.table(file.choose(), quote="", sep = ",", header=TRUE)
#PRINT DATA (INSPECTION PRIOR TO ANALYSIS)
catalysis  

#PLOT
plot(catalysis$ABS~catalysis$Time.min.,
     pch=16,
     main= "Spectrophotometric Determination of Trial 10 TEM1 Catalysis",
     sub="Linear Regression: Y= .77(X)+.623" ,
     xlab="Time(min)",
     ylab="Absorbance (405nm)",
      )
# FIT LINE
# ADD OR REMOVE BRACKET RANGES IF PLOT IS NONLINEAR/LINEAR!!!!!!!!
abline(lm(catalysis$ABS[0:11]~catalysis$Time.min.[0:11]),
       col="red")

#SUMMARIES
summary(catalysis)
#FITLINE SUMMARY ADD OR REMOVE BRACKETS AS NEEDED!!!!!
summary(lm(catalysis$ABS[0:11]~catalysis$Time.min.[0:11]))

#END SCRIPT
##########################################################################
#TODO:

