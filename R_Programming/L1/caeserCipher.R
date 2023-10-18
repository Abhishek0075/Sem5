                          # FUNCTIONS
charAt <- function(sentence,index){
    c <- substr(sentence,index,index)
}

                          # main Part

shift <- 3
sentence <- "vw8xy2q3zabcd"
cat("Before Caeser Cipher Encryption : ",sentence,"\n")

# Shift is done to down
for(i in 1:nchar(sentence)){
  if(tolower(charAt(sentence,i)) %in% letters){
      alphabet = tolower(charAt(sentence,i))
      position <- which(letters %in% alphabet)+shift
      if(position>26){
        position <- position-26
      }
      if(i-1<1){
        sentence <- paste0(letters[position], substr(sentence, i+1, nchar(sentence)))
      }else{
        sentence <- paste0(substr(sentence, 1, i-1),letters[position], substr(sentence, i+1, nchar(sentence)))
      }
  }else{
      next
  }
}

cat("After Caeser Cipher Encryption : ",sentence)
