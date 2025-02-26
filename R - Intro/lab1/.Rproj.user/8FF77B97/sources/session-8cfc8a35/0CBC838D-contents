# KIỂU DỮ LIỆU

# Dữ liệu mà chúng ta lưu trữ trong R có thể có nhiều kiểu khác nhau.
# Tùy thuộc vào kiểu dữ liệu, các hàm và phép toán có thể thực hiện sẽ khác nhau.

# R có 5 kiểu dữ liệu chính:

# ❖ Numeric – kiểu dữ liệu dùng để lưu trữ số
# (đây là kiểu dữ liệu mặc định cho số)

# ❖ Integer – kiểu dữ liệu dùng để lưu trữ số nguyên
# (không có phần thập phân)

# ❖ Logical – kiểu dữ liệu cho giá trị logic TRUE/FALSE hoặc 1/0

# ❖ Character – kiểu dữ liệu cho văn bản
# (có thể là ký tự đơn hoặc chuỗi ký tự dài)

# ❖ Date – kiểu dữ liệu dùng để lưu trữ ngày tháng
# (trông giống như text nhưng được lưu dưới dạng số)

#### MỘT SỐ PHƯƠNG THỨC QUAN TRỌNG #####

# class() : kiểm tra kiểu dữ liệu

# is.numeric() : kiểm tra dữ liệu có phải là numeric hay không
# is.integer() : kiểm tra dữ liệu có phải là integer hay không
# is.logical() : kiểm tra dữ liệu có phải là logical hay không
# is.character(): kiểm tra dữ liệu có phải là character hay không

# Chuyển đổi kiểu
# as.numeric()
# as.integer()
# as.logical()
# as.character()
# as.Date()

a <- 1.5
class(a)

b <- 10
class(b)
is.integer(b)
is.numeric(b)


### INTERGER ###
# Đây là kiểu dữ liệu cho dữ liệu số, chỉ lưu trữ số nguyên
# (không có phần thập phân).
# Đây là một phiên bản đặc biệt (lớp con) của lớp numeric.
# Để tạo một biến thuộc lớp integer, bạn cần phải "ép kiểu".
# khi tạo biến hoặc chuyển đổi từ biến numeric đã tồn tại.

a <- as.integer(a)
class(a)
is.integer(a)
is.numeric(a)

b <- 6.89
class(b)
b <- as.integer(b)
b


### LOGICAL ###
# TRUE / FALSE
# T / F
# 1 / 0

a <- 5; b<-3; c<-1
a + b + c

z = a < b
z
class(z)

# Logical operators in R:
# & (and) conjunction
# | (or) alternative
# ! (not) negation

a <- TRUE
b <- FALSE
a & a
a & b
a | b
!a
!b

x <- (5<9) & (6>=5)
x


### CHARACTER ###

# Lưu trữ dữ liệu văn bản / ký tự.
# Sử dụng "quotation" " 

a <- "z"
b <- "Le Nhat Tung"
class(a)
class(b)

c <- "9.66"
c
is.numeric(c)
d <- as.numeric(c)
d

d <- as.numeric("9. sau sau")
d

d <- as.numeric("9.66  ")
d

### DATE ###
# Trong R có nhiều cách để xử lý dữ liệu ngày tháng.
# Cách tiêu chuẩn đến từ R cơ bản là sử dụng hàm as.Date()
# để chuyển đổi chuỗi thành kiểu ngày tháng.
# Ngày tháng được lưu trữ dưới dạng số ngày tính từ 1970-01-01,
# với giá trị âm cho các ngày trước đó.
# Định dạng này chỉ lưu trữ thông tin ngày
# (không bao gồm giờ, phút, giây).

date1 <- "2030-01-15"
class(date1)

as.numeric(date1)

date2 <- as.Date(date1)
class(date2)

as.numeric(date2)

dateThanh <- as.Date("2004-02-28") #Thanh
as.numeric(dateThanh)

dateQAnh <- as.Date("2004-01-01") # QANH

dateQAnh - dateThanh

# 01/02/2025
# 01-03-2028

# AS.DATE() FORMATTING
# %d : day (0->31)   (1-31)
# %a / %A : tên của ngày trong tuần : Sun / Sunday
# %m: month (00-12)
# %b / $B: tên của tháng: Jan / January
# %y / %Y: year : 25 / 2025

"15.01.2030"
dates2 <- c("11/20/80", "11/20/91", "11/20/1993", "09/10/93")
dates2.D <- as.Date(dates2)
# Error in charToDate(x) : 
#   character string is not in a standard unambiguous format
dates2.D <- as.Date(dates2, format = "%m/%d/%y")                    
dates2.D

# XỬ LÝ NGÀY THÁNG NÂNG CAO
# Để xử lý ngày tháng nâng cao trong R, bạn có thể sử dụng các lớp POSIX.
# Các lớp POSIX cho phép xử lý dữ liệu ngày-giờ
# với điều chỉnh múi giờ và thường được dùng
# cho phân tích chuỗi thời gian của dữ liệu chứng khoán.
# Cách sử dụng as.POSIX*:
# Usage of as.POSIX*:
#   https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/as.POSIX*
#   Formats:
#   https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/strptime

time1 <- as.POSIXct("2025-02-16 10:15:00")
time1

time2 <- as.POSIXct("2024-02-16 14:30:00", tz="Asia/Ho_Chi_Minh")
time2

# Chuyển đổi với định dạng tùy chỉnh
time3 <- as.POSIXct("16/02/2024 14:30:00", 
                    format="%d/%m/%Y %H:%M:%S")
time3
