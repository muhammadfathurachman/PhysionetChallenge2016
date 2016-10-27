
## Read XML File ARR
library(foreign) # Import function from foreign Library to read arff file
setwd("H:/THESIS/DATA/MATLAB_CODE/TRAINING_MFCC_W512")
dataset <- read.arff("H:/THESIS/DATA/jMIR_2_4_developer/jMIR_2_4_developer/jAudio/feature_values_1.xml")
write.csv(x = dataset,file = "TRAINING_F.csv" )
