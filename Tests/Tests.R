
library(testthat) # package for testing
devtools::install() # Load package
#library() # To check if package is installed



test_that("clean_text entfernt unnötige Zeichen und konvertiert in Kleinbuchstaben", {
  # Teste die clean_text Funktion
  text <- "Hallo! Dies ist ein Beispieltext 123."
  cleaned_text <- clean_text(text)
  expect_equal(cleaned_text, "hallo dies ist ein beispieltext")
})


test_that("remove_stopwords removes all kind of stop words", {
  #exapmle text
  text <- "I love to explore new places and try different cuisines. Traveling allows me to experience diverse cultures and broaden my perspective. It's always exciting to embark on new adventures and create lasting memories. "
  
  filtered_text <- remove_stopwords(text)
  expect_equal(filtered_text, "I love explore new places try different cuisines. Traveling allows me experience diverse cultures broaden my perspective. It's always exciting embark on new adventures create lasting memories.")
})



test_that("remove_stopwords removes all kind of stop words", {
  #exapmle text
  text <- "Ich liebe es, neue Orte zu erkunden und verschiedene Küchen auszuprobieren. Reisen ermöglicht es mir, vielfältige Kulturen zu erleben und meinen Horizont zu erweitern. Es ist immer aufregend, sich auf neue Abenteuer einzulassen und bleibende Erinnerungen zu schaffen."
  
  filtered_text <- remove_stopwords(text)
  expect_equal(filtered_text, "Ich liebe neue Orte erkunden verschiedene Küchen auszuprobieren. Reisen ermöglicht mir, vielfältige Kulturen erleben meinen Horizont erweitern. Es immer aufregend, sich neue Abenteuer einzulassen bleibende Erinnerungen schaffen.")
})





testthat::test_file("C:/Users/MaxiB/Desktop/FortStat Abgabe/Excersise Sheet 6/Excersice-6/Tests/tests.R")
