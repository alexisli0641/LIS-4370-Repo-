# 1
library(plyr)

data <- read.table("Assignment6dataset.txt", sep = "," ,header = TRUE, stringsAsFactors = FALSE)

gender_mean <- ddply(
  data,
  "Sex",
  summarize,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep  = "\t",
  row.names = FALSE
)

# 2
i_students <- subset(
  data,
  grepl("i", Name, ignore.case = TRUE)
)

write.csv(
  i_students$Name,
  file      = "i_students.csv",
  row.names = FALSE,
  quote     = FALSE
)

# 3
write.csv(
  i_students,
  file      = "i_students_full.csv",
  row.names = FALSE
)