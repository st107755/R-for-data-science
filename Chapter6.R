as_tibble(diamonds)

tibble(
  x = 1:5,
  y = 1,
  z = x ^ 2 + y
)

diamonds %>% 
  print (n =20 , width = Inf)

typeof(mtcars)

typeof(diamonds)

class(mtcars)

df <- as_tibble(data.frame(abc = 1, xyz = "a"))
df$x
df[,"xyz"]
df[,c("abc","xyz")]

mtcars

var <- "mpg"

var$mpg

var[[mpg]]

df[["abc"]]

(annoying <- tibble(
  `1` = 1:10,
  `2` = `1` * 2 + rnorm(length(`1`)),
  `3` = `2` / `1`
) %>% rename(one = `1` ))

plot(annoying[[1]] ~ annoying[[2]])


read_delim("SlashSperatedFile","/")

read.fwf(file="fwf_read", widths=c(3,-1,1))

read_delim("randomData",",",quote = "'")

read_csv("a,b\n1,2,3\n4,5,6")

read_csv("a,b,c\n1,2\n1,2,3,4")

read_csv("a,b\n\"1")
