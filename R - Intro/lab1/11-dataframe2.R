# Tạo dataframe
set1 <- data.frame(IdClient = c(1:6, 8), Product = c(rep("Thit kho", 4), rep("Ca kho", 3)))
set2 <- data.frame(IdClient = c(1,2,5,9), Region = c(rep("TP.HCM", 3), "Dong Nai"))

# Gộp dữ liệu - các phép toán:
# Inner Join: merge
set3 <- merge(set1, set2)
print(set3)

# Outer Join (gộp tất cả dữ liệu)
set4 <- merge(x = set1, y = set2, by = "IdClient", all = TRUE)
print(set4)

# Left Join (ưu tiên bảng bên trái)
set5 <- merge(x = set1, y = set2, by = "IdClient", all.x = TRUE)
print(set5)

# Right Join (ưu tiên bảng bên phải)
set6 <- merge(x = set1, y = set2, by = "IdClient", all.y = TRUE)
print(set6)

# Chuyển vị dữ liệu (Transposing data)
print(t(set1))

ten <- 1:10
print(t(ten))

# Sắp xếp dữ liệu
print(sort(set1$IdClient))
print(sort(set1$IdClient, decreasing = TRUE)) # Sắp xếp giảm dần

print(set1[order(set1$IdClient),])
print(set1[order(set1$Product),])
print(set1[order(set1$IdClient, decreasing = TRUE),])

# Lọc dữ liệu / Filter
print(set1[2, ])
print(set1[2, 2])
print(set1[, 2])

# Lọc theo điều kiện
print(set1[set1$Product == "Ca kho", ])
print(set1[set1$Product == "Thit kho", ])

print(set1[set1$Product == "Ca kho" & set1$IdClient > 6, ])
print(set1[set1$IdClient == "Ca kho" | set1$IdClient > 3, ])

# Lấy ra subset
setA <- set1[set1$Product == "Ca kho", ]
setB <- subset(set1, Product == "Thit kho")

# Làm việc với dữ liệu phân loại (factor)
set4$Product <- as.factor(set4$Product)
set4$Region <- as.factor(set4$Region)

print(summary(set4))

# Xử lý dữ liệu bị thiếu
print(is.na(set4$Product))

print(set4[is.na(set4$Product), ])
print(set4[is.na(set4$Region), ])

# Điền giá trị bị thiếu
set4$Region <- as.character(set4$Region)
set4[is.na(set4$Region), "Region"] <- "Viet Nam"
set4$Region <- as.factor(set4$Region)
print(set4)

# Sử dụng complete.cases để kiểm tra dòng đầy đủ
setMissing <- data.frame(
  IdClient = c(1:10),
  Region = c(rep("western", 2), rep(NA, 2), rep("eastern", 6)), # Đủ 10 phần tử
  Wages = c(seq(2000, 3500, 500), NA, seq(4000, 5500, 500))     # Đủ 10 phần tử
)

print(setMissing)

# Lấy các dòng đầy đủ (không có NA)
print(setMissing[complete.cases(setMissing), ])

# Lấy các dòng có ít nhất một NA
print(setMissing[rowSums(is.na(setMissing)) > 0, ])

