#TODO: Use the google style guide to identify coding style errors on lines 8, 12, 14, and 16.
#      One by one, we will edit the file using Github and submit a pull request with the appropriate changes.

add_Census_Region <- function(data, state) {
  data$Census_Region <- NA
  data$Census_Region[data$state %in% c("Iowa", "Kansas", "Minnesota", "Missouri", 
                                       "Nebraska", "North Dakota", "South Dakota", 
                                       "Illinois", "Indiana", "Michigan", "Ohio", 
                                       "Wisconsin")] = "Midwest"
  
  data$Census_Region[data$state %in% c("Connecticut", "Maine", "Massachusetts", 
                                       "New Hampshire", "Rhode Island", "Vermont",
                                       "New Jersey", "New York", "Pennsylvania")]<-"Northeast"
  
  data$Census_Region[data$state %in% c("Arizona", "Colorado", "Idaho", "Montana", "Nevada", "New Mexico", "Utah", "Wyoming", "Alaska", "California", "Hawaii", "Oregon", "Washington")] <- "West"
  
  data$Census_Region[data$state %in% c("Delaware","Florida","Georgia","Maryland", 
                                       "North Carolina", "South Carolina", 
                                       "Virginia", "Washington DC", "West Virginia",
                                       "Alabama", "Kentucky", "Mississippi", "Tennessee", 
                                       "Arkansas", "Louisiana", "Oklahoma", "Texas")] <- "South"
  
  data$Census_Region <- factor(data$Census_Region, levels = c("West", "Midwest", "South", "Northeast"))
  
  return(data)
}