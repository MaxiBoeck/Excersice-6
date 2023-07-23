
library(testthat) # package for testing
devtools::install() # Load package

# Test clean_text function
test_that("clean_text removes unnessesery text and converts in lowercase", {
  # example text
  text <- "Hello! This is an example text 123"
  # use clean_text function
  cleaned_text <- clean_text(text)
  # check result
  expect_equal(cleaned_text, "hello this is an example text")
})

# Test remove_stopwords function -English test version
test_that("remove_stopwords removes all kind of stop words", {
  # exapmle text
  text <- "I love to explore new places and try different cuisines. Traveling allows me to experience diverse cultures and broaden my perspective. It's always exciting to embark on new adventures and create lasting memories. "
  # use remove_stopwords function
  filtered_text <- remove_stopwords(text)
  # check result
  expect_equal(filtered_text, "I love explore new places try different cuisines. Traveling allows me experience diverse cultures broaden my perspective. It's always exciting embark on new adventures create lasting memories.")
})


# Test remove_stopwords function -German test version
test_that("remove_stopwords removes all kind of stop words", {
  #exapmle text
  text <- "Ich liebe es, neue Orte zu erkunden und verschiedene Küchen auszuprobieren. Reisen ermöglicht es mir, vielfältige Kulturen zu erleben und meinen Horizont zu erweitern. Es ist immer aufregend, sich auf neue Abenteuer einzulassen und bleibende Erinnerungen zu schaffen."
  # use remove_stopwords function
  filtered_text <- remove_stopwords(text)
  # check result
  expect_equal(filtered_text, "Ich liebe neue Orte erkunden verschiedene Küchen auszuprobieren. Reisen ermöglicht mir, vielfältige Kulturen erleben meinen Horizont erweitern. Es immer aufregend, sich neue Abenteuer einzulassen bleibende Erinnerungen schaffen.")
})


# Test count_words function
test_that("count_words counts all words in the text", {
  #exapmle text
  text <- "I love explore new places try different cuisines. Traveling allows me experience diverse cultures broaden my perspective. It's always exciting embark on new adventures create lasting memories."
  # use count_words function
  text_count <- count_words(text)
  # check result
  expect_equal(text_count, 27)
})



