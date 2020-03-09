
#WOOD-NT
#CHM4300L
#THIS SCRIPT IS TO GENERATE A PLOT AND RELEVANT STATISTICS FOR AGAROSE GEL ELECTROPHORESIS RESULTS
#THIS SCRIPT IS FREE AND OPEN SOURCE PER GPL3 LICENSE
#USER ASSUMES IMPLICATIONS OF ACADEMIC AND PROFESSIONAL INTEGRITY
#####################################################################################################3
#BEGIN SCRIPT 

#Insert distances in centimeters
distance <- c(3,3.2,3.4,3.7,4.3,4.5,1.4,1.5,1.7,1.9,2.4,2.5,3.8)

#Insert  Base Pair Lengths of Ladder Fragments
bp <- c(1353,1078,872,603,310,281,23130,9416,6682,4361,2322,2027,564)

#Base 10 Logarithm Operation on Base Pair Lenghts
bprefined <- log(bp,10)


# Generate Plot with Regression Line
# YOU WILL MANUALLY HAVE TO APPEND THE NEW SLOPE EQUATION
plot(distance,bprefined,
	main="DNA Ladder Agarose Electrophoresis Fragments (Lab 7) ",
	sub="Regression Line = y= -.543(x)+4.791",
	ylab="Log10(Base Pairs)",
	xlab="Migration Distance (cm)",
	xlim= c(0,5),
	ylim= c(0,5), 
	pch=19,
	abline(lm(bprefined~distance), col="red")
	)
	
#Generate Summary for Equation
summary(lm(bprefined~distance)) 

# END SCRIPT
#######################################################################################################
# TO DO
# 1. AUTOMATE DATA INPUT
# 