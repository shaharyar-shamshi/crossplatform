package signup;
import java.sql.*;

public class usercheck {
	
   public void connect(String name,String userid,String password,String merchant,String gender,String emailid)
   {
	   int k=0;
	   Connection conn=null;
       String id="SHAHARYARSHAMSHI";
       String passcode="shahbazshamshi";
       String url="jdbc:mysql://localhost/cookbook?useSSL=false";
       try
       {
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          conn=DriverManager.getConnection(url, id, passcode);
          
       }
       catch (Exception e)
       {
           System.out.println(e);
       }
       try
       {
    	   PreparedStatement s;
    	   s=conn.prepareStatement("select * from user where username =?");
    	   s.setString(1, userid);
    	   ResultSet rs=s.executeQuery();
    	 if(!rs.next())
    	 {
    		k=0;
    	 }
    	 else
    	 {
    		 k++;
    	 }
    	   
    	   s.close();
    	   rs.close();
       }
       catch(Exception e)
       {
    	   System.out.println(e);
       }
       if(k==0)
       {
    	   
    	   try {
    		   PreparedStatement p;
			p=conn.prepareStatement("INSERT INTO user(name,username,password,merchant,gender,emailid,mobile,balance)values(?,?,?,?,?,?,?,?)");
			p.setString(1, name);
			p.setString(2, userid);
			p.setString(3,password);
			p.setString(4, merchant);
			p.setString(5, gender);
			p.setString(6,emailid);
			p.setInt(7, 988);
			p.setInt(8,0);
			p.executeUpdate();
			
			p.close();
		} 
    	   catch (SQLException e)
    	   {
			System.out.println("error");
		}
       }
       if(conn!=null)
       {
    	   try
    	   {
    		   conn.close();
    	   }
    	   catch(Exception e)
    	   {
    		   System.out.println();
    	   }
       }
       //return k;
       
   }
}
