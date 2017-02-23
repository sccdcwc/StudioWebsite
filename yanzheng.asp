<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>验证页面</title>
</head>

<body >

jt=array("yanphoto/0.gif","yanphoto/1.gif","yanphoto/2.gif",
"yanphoto/3.gif",    "yanphoto/
4.gif","yanphoto/5.gif","yanphoto/6.gif","yanphoto/7.gif",
"yanphoto/8.gif",     "yanphoto/
9.gif")
for i=1 to 4
randomize
jt1=int(10*rnd)
response.write "<img src="&jt(jt1)&" border=0  height=20 width=20 />"
lyp=lyp&jt1
next

</body>
</html>
