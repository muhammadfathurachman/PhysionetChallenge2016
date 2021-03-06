
setwd("H:/THESIS/DATA/MATLAB_CODE/TRAINING_MFCC_W512")

DATASET_A  <- read.csv("TRAINING_A.csv")
DATASET_B <- read.csv("TRAINING_B.csv")
DATASET_C <- read.csv("TRAINING_C.csv")
DATASET_D  <- read.csv("TRAINING_D.csv")
DATASET_F <- read.csv("TRAINING_F.csv")
DATASET_E <- read.csv("TRAINING_E.csv")

DATASET_A <- DATASET_A[-1]
DATASET_B <- DATASET_B[-1]
DATASET_C <- DATASET_C[-1]
DATASET_D <- DATASET_D[-1]
DATASET_E <- DATASET_E[-1]
DATASET_F <- DATASET_F[-1]

setwd("H:/THESIS/DATA/MATLAB_CODE/TRAINING_CLASS")

CLASS_A_ABNORMAL <- read.csv("TRAINING_A_ABNORMAL.csv",header = FALSE)
CLASS_A_NORMAL <- read.csv("TRAINING_A_NORMAL.csv",header = FALSE)

CLASS_B_ABNORMAL <- read.csv("TRAINING_B_ABNORMAL.csv",header = FALSE)
CLASS_B_NORMAL <- read.csv("TRAINING_B_NORMAL.csv",header = FALSE)

CLASS_C_ABNORMAL <- read.csv("TRAINING_C_ABNORMAL.csv",header = FALSE)
CLASS_C_NORMAL <- read.csv("TRAINING_C_NORMAL.csv",header = FALSE)

CLASS_D_ABNORMAL <- read.csv("TRAINING_D_ABNORMAL.csv",header = FALSE)
CLASS_D_NORMAL <- read.csv("TRAINING_D_NORMAL.csv",header = FALSE)

CLASS_E_ABNORMAL <- read.csv("TRAINING_E_ABNORMAL.csv",header = FALSE)
CLASS_E_NORMAL <- read.csv("TRAINING_E_NORMAL.csv",header = FALSE)

CLASS_F_ABNORMAL<- read.csv("TRAINING_F_ABNORMAL.csv",header = FALSE)
CLASS_F_NORMAL <- read.csv("TRAINING_F_NORMAL.csv",header = FALSE)

DATASET_A_FULL <- DATASET_A
DATASET_B_FULL <- DATASET_B
DATASET_C_FULL <- DATASET_C
DATASET_D_FULL <- DATASET_D
DATASET_E_FULL <- DATASET_E
DATASET_F_FULL <- DATASET_F

DATASET_A_FULL$CLASS <- NORMAL
DATASET_B_FULL$CLASS <- NORMAL
DATASET_C_FULL$CLASS <- NORMAL
DATASET_D_FULL$CLASS <- NORMAL
DATASET_E_FULL$CLASS <- NORMAL
DATASET_F_FULL$CLASS <- NORMAL


DATASET_A_FULL$CLASS[CLASS_A_ABNORMAL$V1] <- ABNORMAL
DATASET_B_FULL$CLASS[CLASS_B_ABNORMAL$V1] <- ABNORMAL
DATASET_C_FULL$CLASS[CLASS_C_ABNORMAL$V1] <- ABNORMAL
DATASET_D_FULL$CLASS[CLASS_D_ABNORMAL$V1] <- ABNORMAL
DATASET_E_FULL$CLASS[CLASS_E_ABNORMAL$V1] <- ABNORMAL
DATASET_F_FULL$CLASS[CLASS_F_ABNORMAL$V1] <- ABNORMAL


write.csv(x = DATASET_A_FULL,file = "TRAINING_A_FULL.csv" )
write.csv(x = DATASET_B_FULL,file = "TRAINING_B_FULL.csv" )
write.csv(x = DATASET_C_FULL,file = "TRAINING_C_FULL.csv" )
write.csv(x = DATASET_D_FULL,file = "TRAINING_D_FULL.csv" )
write.csv(x = DATASET_E_FULL,file = "TRAINING_E_FULL.csv" )
write.csv(x = DATASET_F_FULL,file = "TRAINING_F_FULL.csv" )


write.csv(x = DATASET_A_FULL$CLASS,file = "TRAINING_A_CLASS.csv" )
write.csv(x = DATASET_B_FULL$CLASS,file = "TRAINING_B_CLASS.csv" )
write.csv(x = DATASET_C_FULL$CLASS,file = "TRAINING_C_CLASS.csv" )
write.csv(x = DATASET_D_FULL$CLASS,file = "TRAINING_D_CLASS.csv" )
write.csv(x = DATASET_E_FULL$CLASS,file = "TRAINING_E_CLASS.csv" )
write.csv(x = DATASET_F_FULL$CLASS,file = "TRAINING_F_CLASS.csv" )

