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
		String dbPW = ""; // db에서 꺼낸 비밀번호를 담을 변수
        int x = -1;

		String url = "jdbc:mysql://localhost:3306/kkh?useUnicode=true&characterEncording=utf8";
		String id = "root";
		String pw = "1234";
		
		conn=DriverManager.getConnection(url, id, pw);

		String userID = request.getParameter("guest_ID");
		String userPW = request.getParameter("guest_PW");
		String userName = request.getParameter("guest_Name");
		String userEmail = request.getParameter("guest_Email");
		Statement st = conn.createStatement();
		
		 String sql = "SELECT * FROM test WHERE test_id = '" + userID + "' AND test_pw = '" + userPW + "'";
	      //st.executeUpdate(sql);
	      
	      ResultSet rs = st.executeQuery(sql);
	      
	      boolean isLogin = false;
	      if(rs.next()) {
	         isLogin = true;
	         userID = rs.getString("test_id");
	         userName = rs.getString("test_name");
	         userEmail = rs.getString("test_email");
	      }
	      
	      if(isLogin) {
	    	  
	         session.setAttribute("userID", userID);
	         session.setAttribute("userName", userName);
	         session.setAttribute("userEmail", userEmail);
	         response.sendRedirect("../pages/FirstPage.jsp");
	      }
	      
	      else {
	            %> <script> alert("Failed Login!"); history.go(-1);</script> <%
	         
	      }
	   }catch(Exception e){
	      e.printStackTrace();
	      }

%>
</body>
</html>