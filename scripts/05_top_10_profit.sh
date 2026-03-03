# Tạo field lợi nhuận (profit=revenue - budget) sau đó sort top 10
mlr --csv put '$profit=$revenue-$budget' tmdb_clean_date.csv | mlr --csv sort -nr profit | head -n 11 > top_10_profit.csv
