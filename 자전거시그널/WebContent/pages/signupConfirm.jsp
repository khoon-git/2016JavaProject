<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="java.sql.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>

<body>
<% 
	request.setCharacterEncoding("utf-8");

	Connection conn=null;
	try {
		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/kkh?useUnicode=true&characterEncording=utf8";
		String id = "root";
		String pw = "1234";
		
		conn=DriverManager.getConnection(url, id, pw);

		String userID = request.getParameter("guest_ID");
		String userPW = request.getParameter("guest_PW");
		String userEMail = request.getParameter("guest_EMail");
		String userPN = request.getParameter("guest_PN");
		String userName = request.getParameter("guest_Name");
		String userDepartment = request.getParameter("guest_Department");
		Statement st = conn.createStatement();
		
		String sql = "SELECT * FROM test WHERE test_id = '" + userID + "'";
		
		//st.executeUpdate(sql);

		ResultSet rs = st.executeQuery(sql);

		if(rs.next()) { //ID가 있으면
			%> <script> alert("Already Registered ID"); history.go(-1);</script> <%
						
		}
		
		else { //ID가 없으면
			String qurey = "INSERT INTO test(test_id, test_pw, test_email, test_pn, test_name, test_study) VALUES('"+userID+"','"+userPW+"','"+userEMail+"','"+userPN+"','"+userName+"','"+userDepartment+"')";
			st.executeUpdate(qurey);
			%><script>location.href = "Login.jsp"; </script><%

		}
	
	}catch(Exception e){
		e.printStackTrace();
		}
%>
</body>
</html>