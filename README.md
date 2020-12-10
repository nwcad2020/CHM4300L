# CHM4300L PORTFOLIO 
This Repository contains the scripts used to perform the Data Analysis portions required for the CHM4300L Reports

--------------------------------------------------------------------------------
## SDS-PAGE Analysis Script

This script, takes manually inputted raw data, in the form of ladder-estimated molecular weight, and the estimated distance traveled for each examined band. 
A base 10 logarithm is then performed on the molecular weight (kiloDalton), as the refined molecular weight that is to be plotted.

A graph is then made (y axis being the log(kDa) and x axis being distance travelled, and a basic statistical summary is generated. The regression line can be derived from this summary, and then manually appended into the graph.

## Agarose Gel Electrophoresis Analysis Script

Much like the SDS-PAGE Script, the AGE script takes manually inputted distances travelled, and ladder-estimated base pair lengths, performs a base 10 logarithm on the base pair lengths, then plots the distances traveled as the x axis and the logarithm as the y axis. A summary is also generated, from which the regression line can be derived from. 
