Code Book - Eoin Ahern
======================


this code book is use to give a brief description of the column variable produced on roject completion.
for the most part these descriptions will be taken from the original "features_info.txt" document.
These variables include only mean, standard deviation, subject (number of person experiment was conducted upon) and
Activity ( essentially what the person was doing while excelerometer data was being collected).

Activity includes 6 different states the "subject" was in while the data was recorded these included.
There were 30 different subjects that the data was eventually collected from.


1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING





 [1] "TimeBodyAccmeanX"                     [2] "TimeBodyAccmeanY"                    
 [3] "TimeBodyAccmeanZ"                     [4] "TimeBodyAccstdX"                     
 [5] "TimeBodyAccstdY"                      [6] "TimeBodyAccstdZ"                     
 [7] "TimeGravityAccmeanX"                  [8] "TimeGravityAccmeanY"                 
 [9] "TimeGravityAccmeanZ"                  [10] "TimeGravityAccstdX"                  
[11] "TimeGravityAccstdY"                   [12] "TimeGravityAccstdZ"                  
[13] "TimeBodyAccJerkmeanX"                 [14] "TimeBodyAccJerkmeanY"                
[15] "TimeBodyAccJerkmeanZ"                 [16] "TimeBodyAccJerkstdX"                 
[17] "TimeBodyAccJerkstdY"                  [18] "TimeBodyAccJerkstdZ"                 
[19] "TimeBodyGyromeanX"                    [20] "TimeBodyGyromeanY"                   
[21] "TimeBodyGyromeanZ"                    [22] "TimeBodyGyrostdX"                    
[23] "TimeBodyGyrostdY"                     [24] "TimeBodyGyrostdZ"                    
[25] "TimeBodyGyroJerkmeanX"                [26] "TimeBodyGyroJerkmeanY"               
[27] "TimeBodyGyroJerkmeanZ"                [28] "TimeBodyGyroJerkstdX"                
[29] "TimeBodyGyroJerkstdY"                 [30] "TimeBodyGyroJerkstdZ"                
[31] "TimeBodyAccMagmean"                   [32] "TimeBodyAccMagstd"                   
[33] "TimeGravityAccMagmean"                [34] "TimeGravityAccMagstd"                
[35] "TimeBodyAccJerkMagmean"               [36] "TimeBodyAccJerkMagstd"               
[37] "TimeBodyGyroMagmean"                  [38] "TimeBodyGyroMagstd"                  
[39] "TimeBodyGyroJerkMagmean"              [40] "TimeBodyGyroJerkMagstd"              
[41] "FreqBodyAccmeanX"                     [42] "FreqBodyAccmeanY"                    
[43] "FreqBodyAccmeanZ"                     [44] "FreqBodyAccstdX"                     
[45] "FreqBodyAccstdY"                      [46] "FreqBodyAccstdZ"                     
[47] "FreqBodyAccmeanFreqX"                 [48] "FreqBodyAccmeanFreqY"                
[49] "FreqBodyAccmeanFreqZ"                 [50] "FreqBodyAccJerkmeanX"                
[51] "FreqBodyAccJerkmeanY"                 [52] "FreqBodyAccJerkmeanZ"                
[53] "FreqBodyAccJerkstdX"                  [54] "FreqBodyAccJerkstdY"                 
[55] "FreqBodyAccJerkstdZ"                  [56] "FreqBodyAccJerkmeanFreqX"            
[57] "FreqBodyAccJerkmeanFreqY"             [58] "FreqBodyAccJerkmeanFreqZ"            
[59] "FreqBodyGyromeanX"                    [60] "FreqBodyGyromeanY"                   
[61] "FreqBodyGyromeanZ"                    [62] "FreqBodyGyrostdX"                    
[63] "FreqBodyGyrostdY"                     [64] "FreqBodyGyrostdZ"                    
[65] "FreqBodyGyromeanFreqX"                [66] "FreqBodyGyromeanFreqY"               
[67] "FreqBodyGyromeanFreqZ"                [68] "FreqBodyAccMagmean"                  
[69] "FreqBodyAccMagstd"                    [70] "FreqBodyAccMagmeanFreq"              
[71] "FreqBodyBodyAccJerkMagmean"           [72] "FreqBodyBodyAccJerkMagstd"           
[73] "FreqBodyBodyAccJerkMagmeanFreq"       [74] "FreqBodyBodyGyroMagmean"             
[75] "FreqBodyBodyGyroMagstd"               [76] "FreqBodyBodyGyroMagmeanFreq"         
[77] "FreqBodyBodyGyroJerkMagmean"          [78] "FreqBodyBodyGyroJerkMagstd"          
[79] "FreqBodyBodyGyroJerkMagmeanFreq"      [80] "angle(tBodyAccMean,gravity)"         
[81] "angle(tBodyAccJerkMean),gravityMean)" [82] "angle(tBodyGyroMean,gravityMean)"    
[83] "angle(tBodyGyroJerkMean,gravityMean)" [84] "angle(X,gravityMean)"                
[85] "angle(Y,gravityMean)"                 [86] "angle(Z,gravityMean)"                
[87] "Activity"                             [88] "Subject"



from "features_info.txt"

The set of variables that were estimated from these signals are: 

items containing "mean": Mean value   
items containing "std": Standard deviation


These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


