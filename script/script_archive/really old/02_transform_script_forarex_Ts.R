setwd('/home/taco/Documents/greta_forarex/data/')

exp_merg = read.table('experiment/merged/exp_merged_pre_and_flight.csv', header = T, sep = ',')
ctrl_merg = read.table('control/merged/control_merged_raw.csv', header = T, sep = ',')


sorted_csv_list = sort(csv_list)

min(sorted_csv_list)

max(sorted_csv_list)
