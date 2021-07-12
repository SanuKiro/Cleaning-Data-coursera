
##    Hi here ! Thanks for your review ! 

##              Please notice the setting of working directory 
##         (I set ".../UCI HAR Dataset" as my working directory )

## Merges the training and the test sets to create one data set.
DataSet<-read.table("train/X_train.txt")
dim(DataSet)     ##get to know the basic information: 7352 rows 561 cols
DataSet<-rbind(DataSet,read.table("test/X_test.txt"))
dim(DataSet)     ##get to know the basic information: 10299 rows 561 cols

## Rename all the variables with descriptive variable names 
## (( I read 'features_info.txt' carefully and only to find the original variable names
##        are suitable cause the scientific terms are hard for me to describe so explicitly ))
VarNames<-read.table("features.txt")
VarNames<-VarNames[,2]
colnames(DataSet)[1:561]<-VarNames

## Extract the measurements on "mean" and "standard deviation"
## From the features_info.txt we can know the signals for those are "mean()" and "std()"
pos<-c(grep("mean()",names(DataSet)),grep("std()",names(DataSet)))
##get the exact cols which include "mean" and "standard deviation"
DataSet<-DataSet[,pos]
DataSet<-DataSet[,-grep("meanFreq()",names(DataSet))]
## Extract the target measurements to refresh our data set 
##  and notice to remove the "meanFreq()"

## Add two new rows to explain the origin of each rows ("Training" or "Test" sets)
##  and the subjects of the rows: 
Origin<-c(rep("Training",times= 7352),rep("Test",times= 10299-7352))
DataSet<-cbind(Origin,DataSet)
colnames(DataSet)[1]<-"Origin"
Subject<-read.table("train/subject_train.txt")
Subject<-rbind(Subject,read.table("test/subject_test.txt"))
DataSet<-cbind(Subject,DataSet)
colnames(DataSet)[1]<-"Subject"
DataSet$Subject<-as.numeric(DataSet$Subject)

## As we didn't change the order of the rows, so we can add a new col for the activities' names
Actlabels<-rbind(read.table("train/y_train.txt"),read.table("test/y_test.txt"))
##get the labels in order 
DataSet<-cbind(Actlabels,DataSet)
colnames(DataSet)[1]<-"ActNames"


## Use descriptive activity names to name the activities in the data set
##1 WALKING             -> Walk
##2 WALKING_UPSTAIRS    -> WalkUp
##3 WALKING_DOWNSTAIRS  -> WalkDown
##4 SITTING             -> Sit
##5 STANDING            -> Stand
##6 LAYING              -> Lay
SwitchN<-function(x)
{
  switch (x,
          "Walk","WalkUp","WalkDown","Sit","Stand","Lay"
  )
}
## I create SwitchN function to use sapply in the next step more conveniently
##     and the final purpose is to replace the labels with actual names
ActNames<-sapply(DataSet$ActNames,SwitchN)
DataSet$ActNames<-ActNames


##Create the new final data set with the average of each variable for each activity and each subject.
## (OMG , it seems that it's no use differing the data's origin that I've done before)
dim(DataSet)
FinalDataSet<-data.frame()
for(i in 1:30){          ## here, two for loops are used to created a new data frame
  for(j in 1:6)
  {
    interdata<-c(i,SwitchN(j),
      sapply(DataSet[which(DataSet$ActNames==SwitchN(j))&&which(DataSet$Subject==i),4:69], mean))
    ## Here, "interdata" is a variable that contains the every row needed for the data frame
    FinalDataSet<-rbind(FinalDataSet,interdata)
    ## Here, combine every row in every loop and finally turn to be the final data set
  }
}
## Rename the cols 
VarNames<-colnames(DataSet[4:69])
pasteN<-function(x)
{
  paste("AVER",x)
}
VarNames<-sapply(VarNames,pasteN)
VarNames<-c("Subjects","ActNames",VarNames)
colnames(FinalDataSet)<-VarNames

## Output
write.table(FinalDataSet,file = "FinalDataSet.txt",row.name=FALSE)

##         The End !







