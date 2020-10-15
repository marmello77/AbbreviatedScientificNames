# This function abbreviates scientific names by using only the first three
# letters of the genus and the epithet to make a short code.
AbbreviatedNames <- function(vector) {
    
    # Make a character vector to store the result
    abbreviations <- character(length = length(vector))

    # Split scientific names into genus and epithet
    splitnames <- strsplit(vector, " ")
    
    for (i in 1:length(vector)){
        
        # One name
        if(length(splitnames[[i]])==1){
            vector[i] <- paste(substr(splitnames[[i]][1],1,5),
                               substr(splitnames[[i]][1],
                                      (nchar(splitnames[[i]][1])+1)-1,
                                      nchar(splitnames[[i]][1])), sep = "")
        }
        
        # Two names
        else if(length(splitnames[[i]])==2){
            vector[i] <- if(splitnames[[i]][2] == "^sp") {
                paste(substr(splitnames[[i]][1],1,3),
                      splitnames[[i]][2], sep = "")
            }
            else {
                paste(substr(splitnames[[i]][1],1,3),
                      substr(splitnames[[i]][2],1,3), sep = "")
            }
        }
        
        # Three names
        else if(length(splitnames[[i]])==3){
            vector[i] <- paste(substr(splitnames[[i]][1],1,3),
                               substr(splitnames[[i]][3],1,3), sep = "")
            # Assuming that the unwanted word is always in the middle 
        }
        
    }
    
    return(vector)
}