library(tidyverse)

# import data
#sales <- read_csv("/home/justin/Documents/Repos/RProjects/r-pluralsight-trainings/byfr3as/property_sales/data/property_sales.csv") #abs path
sales <- read_csv("data/property_sales.csv") #relative path (more reproducible)

# first five rows of fake data
head(x = sales, n = 5)

# number of rows of fake data
total_sales <- nrow(sales)
total_sales

# keep just "Dwelling" sales
dwelling_sales <- filter(sales, property_class == "Dwelling")

# percentage of sales that were dwellings
(nrow(dwelling_sales) / total_sales) * 100

# average price by neighborhood
dwelling_summary <- dwelling_sales %>% 
  group_by(neighborhood) %>% 
  summarize(
    n_sales = n(),
    mean_price = mean(sales_price),
    median_price = median(sales_price)
  ) %>% 
  arrange(median_price)

# save dwelling_summary data to disk
write_csv(dwelling_summary, "results/dwelling_summary.csv")

# plot all sale prices by neighborhood
dwelling_sales %>% 
  ggplot(aes(sales_price)) +
  geom_histogram() + 
  scale_x_log10(labels = scales::label_dollar()) +
  facet_wrap(~ neighborhood, scale = "free_y") +
  labs(
    x = "Sales price",
    y = "Number of sales"
  )

# save dwelling sales plots to disk
ggsave("results/sales_histograms.png", width=8, height = 4.5)
