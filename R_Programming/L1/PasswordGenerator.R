generate_password <- function(total_length) {
  uppercase_chars <- LETTERS
  lowercase_chars <- letters
  digit_chars <- as.character(0:9)
  special_chars <- c('!', '@', '#', '$', '%', '^', '&', '*')
  password <- c(sample(uppercase_chars, 1), sample(lowercase_chars, 1), sample(special_chars, 1), sample(digit_chars, 1))
  remaining_length <- total_length - 4
  for (i in 1:remaining_length) {
    char_type <- sample(c(uppercase_chars, lowercase_chars, digit_chars, special_chars), 1)
    password <- c(password, sample(char_type, 1))
  }
  password <- sample(password)
  password <- paste(password, collapse = '')
  return(password)
}

total_length <- as.integer(readline("Enter the desired total password length: "))

if (is.na(total_length) || total_length < 4) {
  cat("Invalid input. Please enter a positive integer of at least 4 for the total password length.\n")
} else {
  password <- generate_password(total_length)
  cat("Rndom password is: ", password, "\n")
}