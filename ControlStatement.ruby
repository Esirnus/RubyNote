=begin
控制语句的语法格式
=end

# 1.顺序控制:按照程序的编写,顺序执行


# 2.条件控制:若某条件执行,则执行oo,否则执行xx.条件中的数值比较符号与其它语言一样 如: ==  != <= >=
# 语法格式
# if 条件 then
#  条件成立时执行处理
# end
if 2 == 2 then
  p(2 == 2) # 返回true
end

a = 20
if a >= 10 then
  print "bigger\n"
end
if a <= 9 then
 print "smaller\n"
end
# then 关键字可省略
a = 4
if a >= 10
  print "bigger\n"
end
if a <= 9
 print "smaller\n"
end

# 如果对条件成立或者不成立时都采取不同的处理,可以使用else
# 语法格式
# if 条件 then
#   条件成立时执行处理
# else
#   条件不成立执行处理
# end
name = "esirnus"
if name == "esirnus"
  puts "name = esirnus"
else
  puts "name != esirnus"
end


# 3.循环控制:在某条件成立前,反复执行oo
# 语法格式
# while 循环条件 do
#  希望循环的处理
# end
# 例子: 按顺序输出1~10,10个数字
i = 1
while i <= 10
  print i, "\n";
  i = i + 1;
end

# times方法 循环处理的次数如果已经确定,使用times方法会更加简便
# 语法
# 循环次数.times do
#   希望循环的处理
# end
# 例子: 输出100行"good day!"
100.times do
  print "good day!\n"
end

# 4.异常控制:发生某种异常时,执行oo
