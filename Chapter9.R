tibble(x = c("a,b,c","d,e,f,g","h,i,j")) %>%
  separate(x,c("one","two","three"),fill = "left")

tibble(x = c("a,b,c","d,e","f,g,i","z,y")) %>%
  separate(x,c("one","two","three"), fill = "right", extra = "drop")

tibble(x = c("a,b,c","d,e,f,g","h,i,j")) %>%
  separate(x,c("one","two","three"),remove = FALSE)

fillVsSpread <- tibble(x = c("a,b,c","d,e,f,g","h,i,j")) %>%
  separate(x,c("one","two","three","four")) 

fillVsSpread %>%
  fill(four)

#fillVsSpread %>%
 # spread("one","two","three","four")

testSpread <- read_csv("spread_test")

view (testSpread)

testSpread %>% spread("key","value")
