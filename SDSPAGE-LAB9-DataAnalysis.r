
#WOOD-NT
#CHM4300L
#THIS SCRIPT IS TO GENERATE A PLOT AND RELEVANT STATISTICS FOR AGAROSE GEL ELECTROPHORESIS RESULTS
#THIS SCRIPT IS FREE AND OPEN SOURCE PER GPL3 LICENSE
#USER ASSUMES IMPLICATIONS OF ACADEMIC AND PROFESSIONAL INTEGRITY
#####################################################################################################3
#BEGIN SCRIPT 

#Insert distances in centimeters
distance <- c(.67,.81,.95,1.23,1.52,1.94,2.33,2.79,3.32,3.99,4.84)

#Insert  kDa values of Relative Migration Distance
kda <- c(259,180,130,95,72,55,43,34,26,17,10)

#Base 10 Logarithm Operation on Base Pair Lenghts
kdarefined <- log(kda,10)


# Generate Plot with Regression Line
# YOU WILL MANUALLY HAVE TO APPEND THE NEW SLOPE EQUATION
plot(distance,kdarefined,
	main="NEB Prestained Standard SDS-PAGE Data (Lab9)",
	sub="Regression Line = y= -.3085(x) + 2.4266",
	ylab="Log10(kiloDaltons)",
	xlab="Migration Distance (cm)",
	xlim= c(0,5),
	ylim= c(0,3), 
	pch=19,
	abline(lm(kdarefined~distance), col="red")
	)
	
#Generate Summary for Equation
summary(lm(kdarefined~distance)) 

# END SCRIPT
#######################################################################################################
# TO DO
# 1. AUTOMATE DATA INPUT
# 