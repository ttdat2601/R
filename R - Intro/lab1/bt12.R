# Sử dụng bộ dữ liệu có sẵn CO2 cho các nhiệm vụ sau:
# 1. In giá trị CO2 uptake từ lớn nhất đến nhỏ nhất.
# 2. Hiển thị các dòng của bộ dữ liệu CO2, nơi Type được đặt thành Quebec và Treatment thành chilled.
# 3. Hiển thị các dòng của bộ dữ liệu CO2, nơi uptake lớn hơn 40 và
# bộ dữ liệu được sắp xếp theo giá trị conc từ nhỏ nhất đến lớn nhất.
# Thử giải chỉ một dòng. Nếu bạn cần tạo
# một đối tượng trung gian - đặt tên là 'temp'.
# 4. Làm thế nào để có được một sắp xếp ngẫu nhiên của bộ dữ liệu CO2? GỢI Ý: Bạn có thể muốn có một
# vector với các chỉ số ngẫu nhiên sẽ đến từ kết quả order(unif(...)).
# set.seed(123)
# missCO2 <- CO2
# missCO2[c(as.integer(runif(10)*nrow(missCO2)),14:16),"uptake"] <- NA
# missCO2[c(as.integer(runif(10)*nrow(missCO2)),14:16),"conc"] <- NA
# missCO2$weight <- paste0(as.integer(runif(nrow(missCO2))*30),"kg")
# 5. Hiển thị các dòng của bộ dữ liệu missCO2 có ít nhất một giá trị bị thiếu.
# 6. Điền các giá trị uptake bị thiếu với giá trị 20.
# 7. Điền các giá trị conc bị thiếu với giá trị trung bình của conc.
# 8. Trích xuất giá trị số từ biến weight và lưu chúng trong cột mới
# "weightNumber".

# Sử dụng bộ dữ liệu có sẵn CO2
data("CO2")

# 1. In giá trị CO2 uptake từ lớn nhất đến nhỏ nhất
print(CO2[order(CO2$uptake, decreasing = TRUE), ])

# 2. Hiển thị các dòng của CO2 có Type = "Quebec" và Treatment = "chilled"
print(subset(CO2, Type == "Quebec" & Treatment == "chilled"))

# 3. Hiển thị các dòng có uptake > 40, sắp xếp theo conc tăng dần
temp <- subset(CO2, uptake > 40)
temp <- temp[order(temp$conc),]
temp

# 4. Làm thế nào để có được một sắp xếp ngẫu nhiên của bộ dữ liệu CO2? GỢI Ý: Bạn có thể muốn có một
# vector với các chỉ số ngẫu nhiên sẽ đến từ kết quả order(unif(...)).
# set.seed(123)
# missCO2 <- CO2
# missCO2[c(as.integer(runif(10)*nrow(missCO2)),14:16),"uptake"] <- NA
# missCO2[c(as.integer(runif(10)*nrow(missCO2)),14:16),"conc"] <- NA
# missCO2$weight <- paste0(as.integer(runif(nrow(missCO2))*30),"kg")


set.seed(123)  # Đặt seed để kết quả có thể lặp lại

# Bước 1: Tạo một vector chỉ số ngẫu nhiên
random_indices <- order(runif(nrow(CO2)))

# Bước 2: Sắp xếp dữ liệu theo các chỉ số ngẫu nhiên và lưu vào temp
temp <- CO2[random_indices, ]

# Hiển thị kết quả
temp
# 5. Tạo bộ dữ liệu với giá trị bị thiếu
set.seed(123)
missCO2 <- CO2
miss_idx <- sample(nrow(missCO2), 10)
missCO2[miss_idx, c("uptake", "conc")] <- NA
missCO2$weight <- paste0(sample(0:30, nrow(missCO2), replace = TRUE), "kg")

# Lọc dòng có ít nhất một giá trị NA
missCO2[rowSums(is.na(missCO2)) > 0, ]

# 6. Điền uptake bị thiếu bằng 20
missCO2$uptake[is.na(missCO2$uptake)] <- 20

# 7. Điền conc bị thiếu bằng trung bình conc
missCO2$conc[is.na(missCO2$conc)] <- mean(missCO2$conc, na.rm = TRUE)

# 8. Trích xuất số từ weight
# Kiểm tra cấu trúc của cột weight
str(missCO2$weight)

# Lấy độ dài của mỗi chuỗi trong cột weight
weight_length <- length(missCO2$weight)

# Trích xuất phần số (bỏ đi "kg")
missCO2$weightNumber <- as.numeric(substring(missCO2$weight, 1, weight_length - 2))

# Hiển thị kết quả
missCO2

