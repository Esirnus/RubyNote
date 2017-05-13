
# 1.数组
names = ["张三", "李四",  "王五", "赵二麻子"]
print "第一个名字:", names[0], "\n"
print "第二个名字:", names[1], "\n"
print "第三个名字:", names[2], "\n"
print "第四个名字:", names[3], "\n"

names[1] = "aaa"
print "第二个名字:", names[1], "\n"

print names, "\n"

puts names.size

print(names.size,"\n")

print names.size, "\n"

print names.length, "\n"
# ? 为什么使用print names.size "\n" 会报错?`length': wrong number of arguments (given 1, expected 0) (ArgumentError)
# 少了分隔符 ","

# 需求: 输出names 所有元素 对在数组中符合某条件的元素执行ooo方法,不合符的执行xxx方法
# each方法: each 方法会把数组元素逐个拿出来,赋值给指定的|变量|,那么block里面的方法就可以通过访问该变量,实现循环遍历数组的操作
# 语法
# 数组.each do|变量|
#   希望循环的处理
# end

names.each do |n|
  puts n
  if n == "王五"
    print n, "执行ooo方法", "\n"
  else
    print n, "执行xxx方法", "\n"
  end
end

# ruby中散列是键值对的一种数据结构,一般以字符串或者符号作为键,来保存对应的对象




# 2.散列
# 符号:符号与字符串很相似,可以理解为轻量级的字符串,一般作为名称的标签使用,用来表示方法等的对象的名称
# 创建符号,在标识符的前面加上:
sym = :foo
print "sym-->", sym, "\n"
sym1 = :foo
print "sym1-->", sym1, "\n"
sym.to_s
print "sym.to_s->", sym.to_s, "\n"
sym1.to_s
print "sym1.to_s->", sym1.to_s, "\n"
"foo".to_sym
print "foo.to_s->", "foo".to_sym, "\n"

# 散列的创建 : 散列使用{}把创建的内容括起来,用=>来定义获取对象所需要的key,以及key对应的value
# address = {:name => "张三", :id=> "1001", :tel => "15954389999"}
# 将符号当做key来使用时,散列还可以这样写
# address = {name: "张三", id: "1001", tel: "15954389999"}
# 散列名[key] = 希望保存的对象
address = {name: "张三", id: "1001", tel: "15954389999"}
# 打印散列
print address, "\n"
# 取数据
print "取散列对应key数据:  ", address[:name], "\n"

# 散列的循环 : 使用each方法,可以遍历散列里的所有元素,逐个取出其元素的key和value.循环数组时是按照索引顺序遍历元素,循环散列时是按照键值组合遍历元素
# 散列.each do|key,value|
#   希望循环的处理
# end

address.each do |key, value|
  puts "#{key},#{value}"
end

# 3.正则表达式
# ruby处理字符串时,经常用到正则表达式,使用正则表达式能够实现以下功能
# 1.将字符串与模式相匹配
# 2.使用模式分割字符串

# 正则表达式与字符串匹配
# /模式/ =~ 希望匹配的字符串
# 若匹配成功则返回匹配部分的位置.匹配失败,返回nil
/ruby/ =~ "ssssssrubyss"
puts /ruby/ =~ "ssssssrubyss"
# 正则表达式右边的/加上i,则表示不区分大小写 /模式/i
puts /rubY/i =~ "ssRUBY"

names = ["小王", "隔壁老王", "犀利哥"]
names.each do |name|
  if /王/ =~ name
    puts name
  end
end
