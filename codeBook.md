+ The output of the tidy dataset project is a dataframe which has 180 observations of the following 80 variables:
 1. "subjectID" 	Person who participated in the experiment. Integer value from 1 to 30
 2. "activityName"	Kind of activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING being measured) 
 * The variables below represent data from accelerometer and gyroscope signals and are bounded in the range of [-1,1]*
 * The next 3 variables measure the mean for the X,Y,Z coordinate values of the body acceleration *
 4. "tBodyAccMeanY"            
 5. "tBodyAccMeanZ"     
 * The next 3 variables measure the standard deviation for the X,Y,Z coordinate values of the body acceleration *      
 6. "tBodyAccStdX"            
 7. "tBodyAccStdY"             
 8. "tBodyAccStdZ"    
 * The next 3 variables measure the mean for the X,Y,Z coordinate values of the gravity acceleration *        
 9. "tGravityAccMeanX"        
 10. "tGravityAccMeanY"         
 11. "tGravityAccMeanZ"         
 * The next 3 variables measure the standard deviation for the X,Y,Z coordinate values of the gravity acceleration * 
 12. "tGravityAccStdX"         
 13. "tGravityAccStdY"          
 14. "tGravityAccStdZ" 
 * The next 3 variables measure the mean for the X,Y,Z coordinate values of the jerk for body acceleration *       
 15. "tBodyAccJerkMeanX"       
 16. "tBodyAccJerkMeanY"        
 17. "tBodyAccJerkMeanZ"      
 * The next 3 variables measure the standard deviation for the X,Y,Z coordinate values of the jerk for body acceleration *   
 18. "tBodyAccJerkStdX"        
 19. "tBodyAccJerkStdY"         
 20. "tBodyAccJerkStdZ"        
 * The next 3 variables measure the mean for the X,Y,Z coordinate values of the body acceleration from gyroscope signals * 
 21. "tBodyGyroMeanX"          
 22. "tBodyGyroMeanY"           
 23. "tBodyGyroMeanZ"     
 * The next 3 variables measure the standard deviation for the X,Y,Z coordinate values of the body acceleration from gyroscope signals  *      
 24. "tBodyGyroStdX"           
 25. "tBodyGyroStdY"            
 26. "tBodyGyroStdZ"   
 * The next 3 variables measure the mean for the X,Y,Z coordinate values of the body jerk from gyroscope signals *   
 27. "tBodyGyroJerkMeanX"      
 28. "tBodyGyroJerkMeanY"       
 29. "tBodyGyroJerkMeanZ"      
 * The next 3 variables measure the standard deviation for the X,Y,Z coordinate values of the body jerk from gyroscope signals *  
 30. "tBodyGyroJerkStdX"       
 31. "tBodyGyroJerkStdY"        
 32. "tBodyGyroJerkStdZ"
 * The next 2 variables measure the mean and standard deviation for the magnitude of the body acceleration  *         
 33. "tBodyAccMagMean"         
 34. "tBodyAccMagStd"      
 * The next 2 variables measure the mean and standard deviation for the magnitude of the gravity acceleration *
 35. "tGravityAccMagMean"       
 36. "tGravityAccMagStd"  
 * The next 2 variables measure the mean and standard deviation for the magnitude of the body acceleration jerk *     
 37. "tBodyAccJerkMagMean"      
 38. "tBodyAccJerkMagStd"    
 * The next 3 variable names measure the standard deviation and mean values from the gyroscope signals *   
 40. "tBodyGyroMagStd"          
 41. "tBodyGyroJerkMagMean"     
 42. "tBodyGyroJerkMagStd"    
 * The following variables have similar meaning to the previous 3:42 variables, except that were obtained after applying a Fast Fourier Transform to the signals and they signify frequency domain signals *
 43. "fBodyAccMeanX"            
 44. "fBodyAccMeanY"            
 45. "fBodyAccMeanZ"           
 46. "fBodyAccStdX"             
 47. "fBodyAccStdY"             
 48. "fBodyAccStdZ"            
 49. "fBodyAccJerkMeanX"        
 50. "fBodyAccJerkMeanY"        
 51. "fBodyAccJerkMeanZ"       
 52. "fBodyAccJerkStdX"         
 53. "fBodyAccJerkStdY"         
 54. "fBodyAccJerkStdZ"        
 55. "fBodyGyroMeanX"           
 56. "fBodyGyroMeanY"           
 57. "fBodyGyroMeanZ"          
 58. "fBodyGyroStdX"            
 59. "fBodyGyroStdY"            
 60. "fBodyGyroStdZ"           
 61. "fBodyAccMagMean"          
 62. "fBodyAccMagStd"           
 63. "fBodyBodyAccJerkMagMean" 
 64. "fBodyBodyAccJerkMagStd"   
 65. "fBodyBodyGyroMagMean"     
 66. "fBodyBodyGyroMagStd"     
 67. "fBodyBodyGyroJerkMagMean" 
 68. "fBodyBodyGyroJerkMagStd" 