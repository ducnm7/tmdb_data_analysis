# Phim có doanh thu nhỏ nhất
mlr --csv sort -n revenue tmdb_clean_date.csv|head -n 2 > min_film_revenue.csv

#Phim có doanh thu lớn nhất
mlr --csv sort -n revenue tmdb_clean_date.csv|head -nr 2 > max_film_revenue.csv
