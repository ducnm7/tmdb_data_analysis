# Số lượng phim mỗi thể loại (lọc cột genres không rỗng -> explode thành các dòng -> clear các ký tự space -> đếm số lần xuất hiện -> sort giảm dần)
mlr --csv filter '$genres!=""' tmdb_clean_date.csv |mlr --csv cut -f genres | tail -n +2 | tr '|' '\n'|sed 's/^ *//;s/ *$//' | grep -v '^$' | sort | uniq -c | sort -nr > film_by_genres.csv
