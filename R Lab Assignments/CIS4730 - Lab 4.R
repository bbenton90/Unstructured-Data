# Blake Benton
# CIS4730 - Lab Assignment
# 3.5.2018

library(httr)
url <- read_html("https://en.wikipedia.org/wiki/Atlanta") # reads in wikipedia page, assigned to "url"

# 1. Get the mayor's name.
mayor_name <- url %>%
  html_nodes(css="#cite_ref-181+ a") %>%
  html_text()
mayor_name # returns the name of Atlanta's current mayor

# 2. Get the image source for Atlanta City Hall.
cityhall_image_src <- url %>%
  html_nodes(css=".tleft:nth-child(117) .thumbimage") %>%
  html_attr("src")
cityhall_image_src # returns URL for city hall image

# 3. Get the paragraph for the 1966 Summer Olympic Games.
olympics_paragraph <- url %>%
  html_nodes(css="p:nth-child(31)") %>%
  html_text()
olympics_paragraph # returns the paragraph about the 1966 Summer Olympic Games

# 4. Get the URLs of all external links.
external_links <- url %>%
  html_nodes(css=".mbox-small+ ul .text") %>%
  html_attr("href")
external_links # returns the URLs for all external links

# 5. Get, store, and clean the "Historical Populations" table.
pop_table <- url %>%
  html_nodes(css=".toccolours") %>%
  html_table()
str(pop_table) # stores table

pop_table <- pop_table[[1]]

pop_table <- pop_table[2:19,c(1, 2, 4)] # establishes which rows and columns to include
names(pop_table) = c("Census", "Pop.", "%+-") # renames columns
rownames(pop_table) <- c(1:18)

(pop_table) # returns table for Historical Population
