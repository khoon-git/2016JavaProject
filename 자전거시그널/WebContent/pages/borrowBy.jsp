<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="java.sql.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
    /* Full-width inputs */
    body{
	background-color :#fffbee;
	}
    input[type=text], input[type=password] {
        width: 50%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
    /* Set a style for all buttons */
     input[type=submit], input[type=button] {
        background: #ffecb3;
        color: #c79a00;
        padding: 0.8em;
        margin: 0.5em auto;
        border: 1px solid #cbba83;
        border-radius : 10px;
    	dispaly:block;
    	font-size:0.6em;
 		position:relative;
 		text-transform : uppercase;
        cursor: pointer;
        width: 100px;
        
    }
    .font {
        font-size: 17px;
        font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;
    }
    /* Add a hover effect for buttons */
    button:hover {
        opacity: 0.8;
    }
    .container {
        text-align: center;
    }
    /* Extra style for the cancel button (red) */
    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }
    /* Center the avatar image inside this container */
    .imgcontainer {
        text-align: center;
        margin: 60px 0 12px 0;
    }
    /* Avatar image */
    img.avatar {
        width: 40%;
        border-radius: 50%;
    }
    img.size {
        margin: 60px 0 12px 0;
        height: 24%;
        width: 24%;
    }
    /* The "Forgot password" text */
    span.psw {
        float: right;
        padding-top: 16px;
    }
    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }
        .cancelbtn {
            width: 100%;
        }
    }
  
	table{
		width:50%;
		height: 35%;
		margin: auto;

		text-align: center;
	}


</style>
<title>자전거 시그널</title>
</head>

<body>
<img src = "../img/logo.png" width ="35%" height = "35%" style="margin-left: auto; margin-top: 100px;margin-right: auto; display: block;"/>

<%

request.setCharacterEncoding("utf-8");

Connection conn=null;

int total = 0;

try{
	String url = "jdbc:mysql://localhost:3306/kkh?useUnicode=true&characterEncording=utf8";
	String id = "root";
	String pw = "1234";
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, id, pw);
	Statement stmt = conn.createStatement();
	String totalSql = "SELECT count(*) from test_board;";
    ResultSet rs = stmt.executeQuery(totalSql);

    if(rs.next()){           

        total = rs.getInt(1);  

      }
     String listSql = "SELECT writer, location, time, nowtime, writer_email from test_board";
     rs = stmt.executeQuery(listSql);
%>
    	 <table>

    		<tr>
    			<td colspan="5" bgcolor="ffecb3"></td>
    		</tr>

    		<tr>
    			<th align="center" width="200">작성자</th>
    			<th align="center" width="500">자전거위치</th>
    			<th align="center" width="200">시간</th>
    			<th align="center" width="400">등록일자</th>
    		</tr>

    		<tr>
    			<td colspan="5" bgcolor="ffecb3"></td>
    		</tr>
    		
  <%
    if(total==0){
  %>

    <tr>
      <td>게시글이 존재하지 않습니다</td>
    </tr>

  <%
    } 
    else{

        while(rs.next()){
          String writer = rs.getString(1);           
          String location = rs.getString(2);   
          String usingtime = rs.getString(3); 
          String nowtime = rs.getString(4);
          String email = rs.getString(5);
    // 실제 리스트가 출력되는 부분 입니다.

    %>
   
    <tr>
	
      <td ><%=writer%></td>
      <td><%=location%></td>
      <td><%=usingtime%></td>
      <td><%=nowtime%></td>
      <form action="sendMail.jsp" type="post">

		<input type="hidden" name="email" value=<%=email%> />
		<td><input type = "submit" value = "메일보내기"  ></td>
		</form>
      
     
    </tr>

    <tr>
    			<td colspan="5" bgcolor="ffecb3"></td>
    	</tr>
    	
  <%
      }
    }
    rs.close();

    conn.close();

    stmt.close();

}catch(SQLException e){
	out.println(e.toString());
}
%>
<tr>
      <td>&nbsp;</td>
      <td colspan="2">
      <div align="center">
      <input type="button" value="뒤로" onclick="location='FirstPage.jsp'">
      </div>
      <td>&nbsp;</td>
      </tr>
</table>
</body>
</html>