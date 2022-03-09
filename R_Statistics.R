#Descriptive statistics

ages <- c(25,22,26,28,29,27,30,41) 
length(ages)
max(ages)
min(ages)
mean(ages)
median(ages)
sd(ages)
var(ages)

##summary 
summary(ages)

##Create your own distribution
my_data <- rnorm(1000, mean = 10, sd = 8)
my_data

##Get a sample of the population data
sample(my_data)

##Datasets firsts steps (already given)
###Open
data("airquality")
###Saved in local
rm("airquality")

##Exploring Dataframes
dim(airquality)
ncol(airquality)
nrow(airquality)
names(airquality)
head(airquality)
tail(airquality)
summary(airquality)
str(airquality)
table(airquality$Month) ##better with a vector or a column

## Process for studying dataset
data("Indometh")
summary(Indometh)
### 1 Check frequencies
#### Simple way
table(Indometh$spray)

#### Hard way
InsectSprays %>%
  group_by(spray) %>% 
  summarise(frec_abs = n()) %>% 
  mutate(
    frec_rel = frec_abs / sum(frec_abs) * 100,
    frec_acc = cumsum(frec_abs),
    frec_rel_acc = cumsum(frec_rel)
  )

plot(InsectSprays$spray)
