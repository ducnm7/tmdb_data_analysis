# Diễn viên đóng nhiều phim nhất: Robert De Niro (lọc cột cast không rỗng -> explode thành các dòng -> clear các ký tự space -> đếm số lần xuất hiện -> sort giảm dần -> lấy giá trị lớn nhất)
mlr --csv filter '$cast!=""' tmdb_clean_date.csv |mlr --csv cut -f cast | tail -n +2 | tr '|' '\n'|sed 's/^ *//;s/ *$//' | grep -v '^$' | sort | uniq -c | sort -nr | head -1 | awk '{$1=""; print substr($0,2)}' > most_actor.csv

# Đạo diễn có nhiều phim nhất: Woody Allen (lọc cột director không rỗng -> explode thành các dòng -> đếm số lần xuất hiện -> sort giảm dần -> lấy giá trị lớn nhất)
mlr --csv filter '$director!=""' tmdb_clean_date.csv |mlr --csv cut -f director | tail -n +2 | tr '|' '\n'|sed 's/^ *//;s/ *$//' | grep -v '^$' | sort | uniq -c | sort -nr | head -1 | awk '{$1=""; print substr($0,2)}' > most_director.csv
