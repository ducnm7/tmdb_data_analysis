# Kiểm tra số record trước khi biến đổi (10866)
mlr --csv count tmdb-movies.csv 

# Kiểm tra số value không rỗng trước khi biến đổi (10866)
mlr --csv filter '$release_date!=""' tmdb-movies.csv| mlr --csv count

mlr --csv put '
  $release_date = strftime(
    strptime($release_date, "%m/%d/%y"),
    "%Y-%m-%d"
  )
' tmdb-movies.csv > tmdb_clean_date.csv

# Kiểm tra số value không rỗng sau khi biến đổi (10866)
mlr --csv filter '$release_date!=""' tmdb_clean_date.csv | mlr --csv count

# Sắp xếp theo ngày phát hành giảm dần
mlr --csv sort -r release_date tmdb_clean_date.csv > tmdb_sort_date.csv
