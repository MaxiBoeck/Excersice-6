```{r}
install.packages("roxygen2")
library(roxygen2)
library(devtools)
```

```{r}
#' Funktion 1: clean_text
#'
#'@param text A text source
#'
#'@retun A text cleaned from digits and punctuaition marks
#'
#'@example Hello! This is an example text 123
#' # Output: hello this is an example text
#'
#'@export
clean_text <- function(text) {

  # removes special characters
  cleaned_text <- gsub("[[:punct:]]+", "", text)

  # converts into lowercase letters
  cleaned_text <- tolower(cleaned_text)

  # removes digits
  cleaned_text <- gsub("\\b\\d+\\b", "", cleaned_text)

  # remove extra spaces
  cleaned_text <- gsub("\\s+", " ", cleaned_text)

  # remove spaces in front and at end
  cleaned_text <- trimws(cleaned_text)

  # return cleaned text
  return(cleaned_text)
}






#' Function 2: remove_stopwords
#'
#'@param text A text source
#'
#'@return removes stopwords from the text
#'
#'@examples Hello! This is the example text.
#'Output: Hello! This example text.
#'
#'@export
remove_stopwords <- function(text) {

  # define stopwords
  stopwords <- c("the", "and", "is", "a", "of", "in", "to", "it", "der", "die", "das", "und", "ist", "ein", "von", "in", "zu", "es", "Es", "Zu", "Und", "Ist", "Ein", "Von", "In", "Der", "Die", "Das")

  # remove double spaces
  text <- gsub("\\s*,\\s*", ",", text)

  # divide text in single words
  words <- strsplit(text, "\\s+")

  # remove stopwords
  filtered_words <- words[[1]][!tolower(words[[1]]) %in% tolower(stopwords)]

  # connect single words back together
  filtered_text <- paste(filtered_words, collapse = " ")

  # output filtered text
  return(filtered_text)
}

#' Function 3: counting words
#'
#'@param text A text source
#'
#'@return A number of how many words are in the text.
#'
#'@example Hello! This is a example text.
#'Output: 6
#'
#'@export
count_words <- function(text) {

  # Split the text into individual words
  words <- strsplit(text, "\\s+")[[1]]  #Count the number of words

  # counting words
  num_words <- length(words)

  # output amount of words
  return(num_words)
}
