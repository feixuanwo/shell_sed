sed -n 's/hello/hi/2' sed.txt #替换每行第二个hello为hi

sed '/body/{s//\/body/2}' body.txt #替换有body行的第二个body为/body，{s//\/body/2}中的//为匹配最近一次正则表达式的匹配地址
#另外一种写法
sed -f body.sh body.txt #见body.sh最后一个大括号必须独立一行

sed '/h[0-9]/{s//\<&\>/1;s//\<\/&\>/2}' h.txt #将第一个h[0-9]增加<h[0-9]>,第二个<\h[0-9]>
#另一种做写法
sed -f h.sh h.txt #见h.sh

sed -n 's:hello:hi:2' test.txt  #通过在s后面可以将分隔符由'/'转换为':'

sed '/static/a IPADDR=192.168.0.1' test.txt
sed '/NETMASK/i IPADDR=192.168.0.1' test.txt
sed '/ONBOOT/c ONBOOT=yes' test.txt #将包含ONBOOT的行的内容更改为ONBOOT=yes

sed -n '1,2l' sed.txt #显示模式空间的内容显示非打印字符，一般与-n一起使用否则会输出两次

sed '/netmask/y/abcefghijklmnopqrstuvwxyz/ABCEFGHIJKLMNOPQRSTUVWXYZ/' sed.txt #y表示按字符进行替换

sed '$r d' a #在a文件最后读入d文件，如果去掉$则每读一行a文件就读一遍d文件的所有内容

sed '2q' a #显示a文件的前两行内容就退出

sed 'n;p' aaa #读取 命令对之前的行已经无效
sed 'N;p' aaa #读取 将两者看成一行
sed 'n:P' aaa #大P打印模式空间中的内容直至\n
sed 'N:P' aaa

sed 'N;L' aaa #大L不显示非打印字符 小l显示非打印字符


sed -f hg.sh bbb #模式空间与保持空间
