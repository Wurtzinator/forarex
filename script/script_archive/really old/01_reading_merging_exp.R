###########

setwd('/home/taco/Documents/greta_forarex/data/experiment/raw/exp_raw_pre_and_flight/')

# List all files stored in the folder of the current working directory (as a list)
csv_list = list.files(full.names = TRUE)

# Keep only non-empty CSVs 
filtered_csv_list = csv_list[file.size(csv_list) > 0] 

# Initialise the first csv file (then later add each individual file using 'rbind')
all_csvs = read.table(filtered_csv_list[1], header = T, sep = ',')

# This adds each csv file to the initial one (with 30k files takes about 10min)
for(csv in 1:length(filtered_csv_list[2:length(filtered_csv_list)])){
  #all_csvs = rbind(test1, read.table(filtered_csv_list[csv], header = T, sep = ','))
  current_csv = read.table(filtered_csv_list[csv], header = T, sep = ',')
  all_csvs = rbind(all_csvs, current_csv)
  print(csv)
  print(filtered_csv_list[csv])
  
}

# Save merged data as CSV file
write.table(all_csvs, file = 'control_merged_raw.csv', sep = ",", row.names = F)



############

colnames(test1)
colnames(test2)

setdiff(colnames(test2), colnames(test2))

rbind(test1, test2)

test1 =  read.table('data1559918905.csv', header = T, sep = ",")

test2 =  read.table('data1558460240.csv', header = T, sep = ",")

test3 =  read.table('data1558460400.csv', header = T, sep = ",")

library(data.table)
data.table(nRow_test2 = nrow(test2),
           nRow_test1 = nrow(test1),
           nCol_test2 = ncol(test2),
           nCol_test1 = ncol(test1),
           nCol_intersect = length(intersect(colnames(test2), colnames(test1))),
           
)

intersect(colnames(test1), colnames(test2))
setdiff(colnames(test1), colnames(test2))
setdiff(colnames(test2), colnames(test1))




head(test1)
tail(test1)
