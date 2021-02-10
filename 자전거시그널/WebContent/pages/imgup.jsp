<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page
	import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*"%>
<%@ page import="java.sql.*"%>


<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	Connection conn=null;

try{
	String url = "jdbc:mysql://localhost:3306/kkh?useUnicode=true&characterEncording=utf8";
	String id = "root";
	String pw = "1234";
	Class.forName("com.mysql.jdbc.Driver");

	conn=DriverManager.getConnection(url, id, pw);

	String userlocation = request.getParameter("userlocation");
	String userusingtime = request.getParameter("userusingtime");
	String writer = (String)session.getAttribute("userID");
	String writerName = (String)session.getAttribute("userName");
	String writerEmail = (String)session.getAttribute("userEmail");
	Statement st = conn.createStatement();
	String qurey = "INSERT INTO test_board(location, time, writer, writer_name, writer_email) VALUES ('"+userlocation+"','"+userusingtime+"','"+writer+"','"+writerName+"','"+writerEmail+"')";
	st.executeUpdate(qurey);
}catch(Exception e){
    e.printStackTrace();
}
response.sendRedirect("../pages/FirstPage.jsp");
%>
</body>
</html>