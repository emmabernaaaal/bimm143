#' ---
#' title: "Class 5: Data Visualization and graphs in R"
#' author: "Emma Bernal"
#' date: "2020-01-23"
#' ---

# Class 5
# Data Visualization and graphs in R

plot(1:10, col="blue", typ="o")

# Need to import/read input data file first
baby <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

#Basic Scatterplot for Age & Weight
plot(baby$Age, baby$Weight)

#Arguements for plotting
plot(baby$Age, baby$Weight, type="o", pch=15, 
     ylim=c(2,10), xlab="Age (months)", 
     ylab="Weight (kg)", main="Baby weight with age", 
     col="blue", cex=2)

# a silly example of 'pch' plot character and 'cex' size
plot(1:5, pch=1:5, cex=1:5, col="purple")


# Next mouse genome example
mouse <- read.table("bimm143_05_rstats/feature_counts.txt", sep="\t", header = TRUE)

# barplot
par(mar=c(5, 11, 0, 1))
barplot(mouse$Count, horiz = TRUE, col="orange", 
        names.arg = mouse$Feature, las=1)

par(mar=c(5,4,2,2))
plot(1:10)


# plotting with color example
gender <- read.delim("bimm143_05_rstats/male_female_counts.txt")

barplot(gender$Count, 
        names.arg=gender$Sample,
        col=rainbow(nrow(gender)), las=2, 
        ylab="Counts")
        

# another plot of the same thing with different colors
barplot(gender$Count, 
        names.arg=gender$Sample,
        col=c("red", "blue")) 
        