# DictNoter
If you are not a Chinese speaker use a translator.<br>
这是一个利用sed和grep的脚本，用于按单词表顺序抓取html词典并拼合成新html文件，达到英语笔记的效果。<br>
### 如何使用
利用类unix操作系统（注意GNU sed 和BSD sed 有区别，该脚本利用GNU sed）执行脚本或在Windows下unix工具集如Git bash和Cygwin打开。<br>
在input文件夹内放入想要转化的单词表支持多文件。单词表格式为文本文件一个单词一行，unix格式换行（LF）。<br>
运行时会显示正在处理的单词表文件和没被匹配的单词。<br>
### 已知bug
部分词条无法全部复制，可能和正则表达式有关。
[详情](https://github.com/karsacui/DictNoter/issues/1)
