paragraph = "Dasan the King of VelamKanni and Dasan is Yo"
result <- strsplit(paragraph," ")

# Total number of words in paragraph

cat("The number of words in the paragraph :",length(result[[1]]),"\n")

wordLengths = list()
for(word in result[[1]]){
  wordLengths <- append(wordLengths,nchar(word))
}

cat("Word lengths : ",paste(wordLengths,collapse = ","),"\n")
sum = 0
for(i in wordLengths){
  sum = sum + i
}


# Average word length

cat("Sum of lengths of words : ",sum,"\n")
average = sum/length(wordLengths)
cat("Average word length : ",average,"\n")


# Identifying longest word

indices <- which.max(wordLengths)
longestWord <- result[[1]][5]
cat("The longest word : ",longestWord,"\n")

# Replace a word with another
newString <- "VasuDon"
changingOne <- "Dasan"
changeIndices = which(result[[1]]%in%changingOne)


for(i in changeIndices){
    result[[1]][i] <- newString
}

print(result)
