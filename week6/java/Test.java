import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {

	public static void main(String[] args) {

		Connection conn;
		Statement stmt;
		String sql;
		ResultSet rs;

		try {
			Class.forName("com.mysql.jdbc.Driver");//드라이버 로딩: DriverManager에 등록
		}catch(ClassNotFoundException e) {
			System.err.println("jdbc error?" + e.getMessage());
			return;
		}

		try {
			String jdbcUrl = "jdbc:mysql://192.168.80.222:3306/dbw";//사용하는 데이터베이스명을 포함한 url
			String userId = "webdb";//사용자계정
			String userPass = "db1004";//사용자 패스워드

			conn = DriverManager.getConnection(jdbcUrl, userId, userPass);//Connection 객체를 얻어냄

			stmt = conn.createStatement();//Statement 객체를 얻어냄

			System.out.println("제대로 연결되었습니다");//성공시 화면에 표시됨

			sql = "select * from a";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				String a = rs.getString(1);
				System.out.print(a);
				a = rs.getString(2);
				System.out.print(a);
				a = rs.getString(3);
				System.out.println(a);	   
			}




			String sql2 = "update a set c='정호영';";
			int x = stmt.executeUpdate(sql2);
			System.out.println(x);

			rs = stmt.executeQuery(sql);

			while(rs.next()) {
				String a = rs.getString("d");
				System.out.print(a);
				a = rs.getString("c");
				System.out.print(a);
				a = rs.getString("b");
				System.out.println(a);	   
			}


			stmt.close();
			conn.close();
		}catch(SQLException e) {
			System.out.println("SQLException: " + e.getMessage());
		} 
	}
}

