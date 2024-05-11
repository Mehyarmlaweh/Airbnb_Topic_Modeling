library(seededlda)
library(quanteda)
library(ggwordcloud)
library(topicmodels)
library(wordcloud)
library(tidyverse)



data <- read.csv("preprocessed_dataset.csv", stringsAsFactors = FALSE)

corp <- corpus(data$selected_words)

toks <- tokens(corp, remove_punct = TRUE, remove_symbols = TRUE, 
               remove_numbers = TRUE, remove_url = TRUE)
dfmt <- dfm(toks) |> 
  dfm_remove(stopwords("en")) |>
  dfm_remove("*@*") |>
  dfm_trim(max_docfreq = 0.1, docfreq_type = "prop")
print(dfmt)
dict <- dictionary(file = "dictionary.yml")
print(dict)

lda_seed <- textmodel_seededlda(dfmt, dict, batch_size = 0.01, auto_iter = TRUE,
                                verbose = TRUE)


phi2<- phi %>%
  as.data.frame()  
  

phi3<- phi2 %>% 
  rownames_to_column(var = "word") %>%
  pivot_longer(-word, names_to = "Topic" , values_to="p") %>%
  group_by(Topic) %>%
  top_n(20)

write.csv(phi3,"phi3final.csv")

set.seed(42)
ggplot(phi3, aes(label = word, size = p)) +
  geom_text_wordcloud() +
  scale_size_area(max_size = 10) +
  theme_minimal() + 
  facet_wrap(vars(Topic),ncol = 3)


teta <- lda_seed$theta

