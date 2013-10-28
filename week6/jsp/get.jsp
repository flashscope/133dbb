<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>

<%@page import="java.sql.*" %>

<%! //global variables
	String query1, update1;
	Connection conn;
	Statement stmt;
	ResultSet rs;
%>

<%
 request.setCharacterEncoding("UTF-8");

  StringBuffer phoneNomber=new StringBuffer();
  phoneNomber.append(request.getParameter("phone1"));
  phoneNomber.append("-");
  phoneNomber.append(request.getParameter("phone2"));
  phoneNomber.append("-");
  phoneNomber.append(request.getParameter("phone3"));
  String name=request.getParameter("name");
%>

<html>
 <head><title>JSP Post Result</title>
 </head>
 <body>
  <ul>
    <li>name : <%= name %></li>
    <li>phone : <%= phoneNomber.toString() %></li>
  </ul>

<%
	try {
	Class.forName("com.mysql.jdbc.Driver");
	} catch(ClassNotFoundException e) {
		out.println("Internal DB Error: " + 
				e.getMessage() +"<br>");
	}
	try {
	String url = "jdbc:mysql://localhost:3306/dbw";
	String id = "webdb";
	String pw = "db1004";
	conn = DriverManager.getConnection(url, id, pw);
	stmt = conn.createStatement();
	out.println("DB OK<br>");
	} catch (SQLException e) {
		out.println("Internal DB Error: " + 
				e.getMessage() +"<br>");
	}
	update1 = "insert into a(c) values(?)";
	PreparedStatement pstmt = conn.prepareStatement(update1); 
	pstmt.setString(1,name);
	pstmt.executeUpdate();

	query1 = "select * from a";
	rs = stmt.executeQuery(query1);
	while(rs.next()) {
	   String a = rs.getString("d");
	   out.print(a + "," );
	   a = rs.getString("c");
	   out.print(a + "," );
	   a = rs.getString("b");
	   out.println(a +"<br>");	   
   }
	
%>
 </body>
</html>
