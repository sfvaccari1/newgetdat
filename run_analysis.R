run_analysis <- function(){
  
  library(tidyr)
  library(dplyr)
  library(data.table)

  
  #read in test data
  subjtest<-readLines("./test/subject_test.txt")
  xtest<-read.table("./test/x_test.txt", stringsAsFactors = FALSE)
  ytest<-readLines("./test/y_test.txt")
  
  #read in train data
  subjtrain<-readLines("./train/subject_train.txt")
  xtrain<-read.table("./train/x_train.txt", stringsAsFactors = FALSE)
  ytrain<-readLines("./train/y_train.txt")
  
  #read in features
  features<-readLines("features.txt")
  
  #read in labels
  acts<-readLines("activity_labels.txt")
  
  
  #assemble test dataframe 
  colnames(xtest)<-features
  xtest<-cbind(ytest, xtest) #bind Activity
  xtest<-cbind(subjtest,xtest) #bind ID
  colnames(xtest)[which(names(xtest) == "ytest")]<- "activity" #change colname to activity
  colnames(xtest)[which(names(xtest) == "subjtest")]<- "id" #change colname to id
  
  #assemble train dataframe
  colnames(xtrain)<-features
  xtrain<-cbind(ytrain, xtrain) #bind Activity
  xtrain<-cbind(subjtrain,xtrain) #bind ID
  colnames(xtrain)[which(names(xtrain) == "ytrain")]<- "activity" #change colname to activity
  colnames(xtrain)[which(names(xtrain) == "subjtrain")]<- "id" #change colname to id

  #merge both datasets
  mergedData<-rbind(xtest,xtrain)
  mergedData$activity<-as.character(mergedData$activity)
  mergedData$id<-as.numeric(mergedData$id)
  
  #replace activities with proper labels
  for(i in 1:nrow(mergedData)){
    if(mergedData$activity[i] == "6"){
      mergedData$activity[i]<- acts[6]
    }else if(mergedData$activity[i] == "5"){
      mergedData$activity[i] = acts[5]
    }else if(mergedData$activity[i] == "4"){
      mergedData$activity[i] = acts[4]
    }else if(mergedData$activity[i] == "3"){
      mergedData$activity[i] = acts[3]
    }else if(mergedData$activity[i] == "2"){
      mergedData$activity[i] = acts[2]
    }else if(mergedData$activity[i] == "1"){
      mergedData$activity[i] = acts[1]
    }
  }

  #subset of data with only mean() and std() variables
  sub_data<-select(mergedData, id, activity, contains("mean()"), contains("std()"))
  data<-tbl_df(sub_data)
  data<-arrange(data,id, activity)
  grpdata<-group_by(data,activity, id)
  findat<-summarise_each(grpdata,funs(mean))
  
  findat

}