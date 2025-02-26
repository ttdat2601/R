# Nhiệm vụ
# 1. Tạo và thêm tên duy nhất vào năm vector có độ dài 8. Làm cho các kiểu dữ liệu của chúng đa dạng. Tạo một dataframe có tên "mySet1" từ các vector đã tạo.
# a) Hiển thị dòng thứ 5 của dataframe đã tạo.
# b) Thay đổi tên của cột thứ hai của dataframe mySet1 thành "column02"
# c) Hiển thị 7 dòng đầu tiên của dataframe mySet1. Sử dụng hai phương pháp khác nhau - với chỉ số và với một hàm.
# 2. Sử dụng bộ dữ liệu iris. Sử dụng chỉ số để hiển thị giá trị của mỗi dòng thứ 3 giữa quan sát thứ 40 và 120. Cố gắng sử dụng một dòng lệnh duy nhất (rút gọn mã để nó vừa trong một dòng duy nhất, không có bất kỳ bước trung gian nào).
# 3. Sử dụng bộ dữ liệu có sẵn "women".
# a) Thay đổi kiểu của cột đầu tiên thành kiểu ký tự.
# b) Thêm hai dòng mới vào bộ dữ liệu với các số tự tạo. Đảm bảo rằng bạn không làm mất các kiểu của biến trong dataframe chính trong quá trình này.
# c) Thêm biến mới vào bộ dữ liệu và đặt tên là "shoe_size". Sử dụng hàm runif để tạo các giá trị cho biến này. Kích thước giày phải là số nguyên giữa 35 và 42.


# 1. Tạo và thêm tên duy nhất vào năm vector có độ dài 8, với các kiểu dữ liệu đa dạng
vec1 <- 1:8                          # Số nguyên
vec2 <- c(2.5, 3.1, 4.7, 5.6, 6.2, 7.8, 8.9, 9.4)  # Số thực
vec3 <- letters[1:8]                 # Ký tự
vec4 <- as.logical(c(1, 0, 1, 1, 0, 0, 1, 0))  # Boolean
vec5 <- as.Date("2024-01-01") + 0:7  # Ngày tháng

# Tạo dataframe mySet1
mySet1 <- data.frame(vec1, vec2, vec3, vec4, vec5)

# a) Hiển thị dòng thứ 5 của dataframe
print(mySet1[5, ])

# b) Đổi tên cột thứ hai thành "column02"
colnames(mySet1)[2] <- "column02"

# c) Hiển thị 7 dòng đầu tiên bằng hai cách
print(mySet1[1:7, ])     # Cách 1: Sử dụng chỉ số
print(head(mySet1, 7))   # Cách 2: Sử dụng hàm head()

# 2. Hiển thị mỗi dòng thứ 3 giữa quan sát thứ 40 và 120 của iris trong một dòng lệnh duy nhất
print(iris[seq(40, 120, by=3), ])

# 3. Sử dụng bộ dữ liệu "women"
data(women)

# a) Chuyển kiểu của cột đầu tiên thành kiểu ký tự
women$height <- as.character(women$height)

# b) Thêm hai dòng mới vào bộ dữ liệu mà không làm mất kiểu của dataframe chính
new_rows <- data.frame(height = as.character(c(75, 80)), weight = c(180, 200))
women <- rbind(women, new_rows)

# c) Thêm cột "shoe_size" với giá trị nguyên ngẫu nhiên từ 35 đến 42
set.seed(42)  # Để kết quả có thể lặp lại
women$shoe_size <- sample(35:42, nrow(women), replace = TRUE)
#Cach 2: dung lenh runif:
women$shoe_size <- floor(runif(nrow(women), min=35, max=43))
# Hiển thị dataframe sau khi chỉnh sửa
print(women)

