# ruby中使用ARGV这个ruby预定义好的数组来获取从命令行传递过来的数据,数组ARGV中的元素,就是命令行中的指定脚本 字符串参数
puts "第 1 个参数: #{ARGV[0]}"
puts "第 2 个参数: #{ARGV[1]}"
puts "第 3 个参数: #{ARGV[2]}"
# ruby CommandLine.ruby 1st 2nd 3rd

# 第 1 个参数: 1st
# 第 2 个参数: 2nd
# 第 3 个参数: 3rd
# 使用数组ARGV后,程序用到的数据就不必写在代码中.同时,抽取数据,保存数据等普通的数据操作对于ARGV都是适用的

name = ARGV[0]
print "hello, ", name , "!\n"
# ruby CommandLine.ruby World
# 从参数里得到的数据都是字符串,如果希望进行运算时,需要对获得的数据进行类型转换.把字符串转换为参数,适用to_i方法.


num0 = ARGV[0].to_i
num1 = ARGV[1].to_i
puts "#{num0} + #{num1} = #{num0 + num1}"
puts "#{num0} - #{num1} = #{num0 - num1}"
puts "#{num0} * #{num1} = #{num0 * num1}"
puts "#{num0} / #{num1} = #{num0 / num1}"
