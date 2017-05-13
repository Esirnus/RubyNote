# 文件的读取
# ruby脚本除了读取命令行传递过来的数据参数外,还可以读取预先写在文件里的数据
# ruby的源码中,有一个名为ChangeLog的文本文件,文件里面记录了ruby相关的修改日志.
# 需求:
# 1.打开文件
# 2.读取文件的文本数据
# 3.输出文件的文本数据
# 4.关闭文件

# 第一部分
# fileName = ARGV[0]
# text = File.read(fileName)
# print text, "\n"
# file.close

# 第二部分
# print File.read(ARGV[0]),"\n"
# 第一部分和第二部分的功能一模一样,但是这样会读取文件的全部内容,耗时,耗内存,当文件超大时,程序会崩溃
# file.read 需要保存文件全部数据到内存空间
# file.each_line 只需要一行文件数据的内存空间


# filename = ARGV[0]
# file = File.open(filename)
# file.each_line do |line|
#   print line
# end
# file.close

# pattern = Regexp.new(ARGV[0])
# filename = ARGV[1]
#
# file = File.open(filename)
# file.each_line do |line|
#   if pattern =~ line
#     print line
#   end
# end
# file.close


# 方法的定义
# 语法
# def 方法名
#   希望执行的处理
# end
def hello
  print "Hello,world.\n"
end

hello()

# 其他文件的引用
# 有时,我们希望在其他的程序里也能重复使用程序的某部分,例如,在某个程序里写好某个方法,在其他程序里也可以调用
# 大部分的编程语言都提供了把多个不同程序组合为一个程序的功能.库文件
# ruby使用require方法来引用库
# require希望使用的库名
# 库名可以省略后缀.rb
# 调用require方法后,ruby会搜索参数指定的库,并读取库中所有内容.库内容读取完毕后,程序才会执行require方法后面的处理
