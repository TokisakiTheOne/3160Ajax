<%--
  Created by IntelliJ IDEA.
  User: YanYuHang
  Date: 2018/12/27
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <a href="ajax.txt" id="demoa">点击</a>
  </body>
  <script>
      //1.获取A标签
      document.getElementById("demoa").onclick = function() {
          //3.声明XMLHttpRequest
          var req = new XMLHttpRequest();
          //4.准备发送的URL
          var url = "ajax.txt";
          //5.设置XMLHttpRequest对象的请求方式
          //设置open方法open(请求类型ps:get/post...,请求的路径)
          //打开连接
          req.open("GET", url);
          //6.调用XMLHttpRequest对象的发送方法
          //如果是get请求 不需要传值
          req.send(null);
          //7.创建回调函数onreadystatechange
          req.onreadystatechange = function() {
              //8.判断是否相应 结束
              if(req.readyState == 4) {
                  //9.判断相应是否正确
                  if(req.status == 200 || req.status == 304) {
                      //10.获取响应的数据
                      var resValue = req.responseText;
                      alert(resValue);
                  }
              }
          }
          //2.取消A标签的默认行为
          return false;
      }
  </script>
</html>
