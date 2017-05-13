=begin
简单的变量赋值
=end

# 变量 = 对象   将对象赋值给变量
# 字符串对象
studentName = "abcd"

# 数值对象
studentCount = 10

name = "esrnis"
age = 18
print "名字:", name, "\n", "年龄:", age, "\n"

x = 5;
y = 10;
z = 20;
area = (x * y + y * z + z * x) * 2
volume = x * y * z
print "表面积 = ", area, "\n"
print "体积 = ", volume, "\n"

# 传递给print方法的字符串也可以这样写
print "表面积 = #{area}\n"
print "体积 = #{volume}\n"

# 使用puts方法,可以不用加"\n"
puts "表面积 = #{area}"
puts "体积 = #{volume}"
