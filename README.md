
Synopsis of Actions - Eoin Ahern
================================

##potentially take parts from this for the read me


Part 1.
=======

ncolunms in X_text.txt = 561
nrows in X_test.txt = 2947
nrow in y_test.txt = 2947   "therefore we have a match in rows?"
nrows in features.txt = 561  "this is the same as ncolumns in X_test. therefore these names represent the cols in X_test.txt? obviously this is a presumtion on my part but it seems correct"

nrows in features.txt = 561 "these rows are the column names for X_test"
subject.txt  has 1 column and 2947 rows.

therefore I cbind (esentially append  columns) y_test and subject_test to the end of X_test. 
I did similar for the "train" folder as the dimensions were the same. then I proceeded to combine the "test" set to the "train" set using rbind() (row bind). 


Part 2.
=======

extract only mean and std deviation columns.

I presume this comes from features.txt. remove column indices that dont contain "Mean" ,  "meanFreq()" , mean()", "std()"  in the title.
so basically i will write a function that returns the indices that match based on the above mention strings. then, 
create a new dataset based on these returned indices. removing unnecessary columns. also include Y  column (from "y_test.txt" and "y_train.txt") and subject columns to the dataset


Part 3.
=======

my column named "Activity"  in my dataset contained the data from the "y_test.txt" and the "y_train.txt" files. I now replaced these numeric values with the key associated with the numbers from the "activity_labels.txt" file.


Part 4.
========

cleaned the names up in the function "cleanactivitynames()". this was done by removing the "-" characters and the "()" from the names in 
features.txt. also I removed the leading character which was either "t" or an "f" . I replaced these characters with a "time" and "freq" respectively by 
iterating over each names in the "features.txt" file and adding the names to a vector. I then proceeded to set these as the column names using the colnames() method. sequentially I did part 4 first. followed by part 3 in the code.

Part 5.
=======

I got the average of the remaining relevant numeric columns for each subject (subject column) on each activity. This was done using the split function and sapply. I accomplished this by splitting on 2 variables "Activity" and "Subject" and using sapply to find the  mean value of each numeric column. decided this would look best in a seperate data frame. 














