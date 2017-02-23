<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
dim  user,password,yan,c_yan
user=request.Form("user")
password=request.Form("password")
yan=request.Form("yan")
c_yan=request.Form("c_yan")
sql="select * from user where user='"&user&"'and password='"&password&"'"
rs.open sql,conn,1,1
if not rs.eof and yan=c_yan then
response.Cookies("log")("user")=user
response.Cookies("log")("password")=password
l_time=20
l_time=dateadd("n",l_time,now())
response.Cookies("log").expires=l_time
response.write  "<font color='#003300' face='华文行楷' size='3'>欢迎【</font><font 
color=red><b>"&user&"</b></font><font color='#003300' face='华文行楷' size='3'>】
进入青春在线!</font>"
else
response.Write("用户名或密码有误，请返回！ <a href='javascript:history.back()'>返
回</a>")
end if
</body>
</html>
