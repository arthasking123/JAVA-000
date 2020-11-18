package io.kimmking.springboot01.Jdbc;





import java.sql.*;

/**
 * Created by zy on 2020/11/18.
 */
public class MysqlConnector {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://118.190.65.33:3306/jingtongcloud";
    static final String USER = "root";
    static final String PASS = "Jby&*2016";
    static Connection conn = null;
    static Statement stmt = null;
    static private PreparedStatement pstmt;
    private long executionStart;
    private long executionEnd;
    static public MysqlConnector loadDriver = null;
    public static MysqlConnector getInstance(){
        //DCL
        if(loadDriver == null){
            synchronized (MysqlConnector.class){
                try {
                    // 注册 JDBC 驱动
                    Class.forName(JDBC_DRIVER);
                    if (loadDriver == null) {
                        loadDriver = new MysqlConnector();
                    }
                }
                catch(Exception e){
                    e.printStackTrace();
                }
            }
        }
        return loadDriver;
    }

    void before(){
        try {
            // 打开链接
            executionStart = System.currentTimeMillis();
            System.out.println("连接数据库...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            conn.setAutoCommit(false);
            if (pstmt != null) {
                pstmt.clearParameters();
                pstmt.clearBatch();
            }

        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    void after(){
        try {
            conn.commit();
            conn.setAutoCommit(true);
            pstmt.close();
            pstmt = null;
            conn.close();
            executionEnd =  System.currentTimeMillis();
            System.out.println("query/execution time:"+(executionEnd - executionStart)+" ms");
        }
        catch(Exception e){
            e.printStackTrace();
        }

    }

    public void selectTest(){
        before();
        String sql = "SELECT id, name FROM auth_teacher WHERE id = 99999 ";
        System.out.println(sql);

        try {
            pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();

            // 展开结果集数据库
            while (rs.next()) {
                // 通过字段检索
                int id = rs.getInt("id");
                String name = rs.getString("name");
                // 输出数据
                System.out.println("ID: " + id + " NAME:" + name);
            }
            // 完成后关闭
            rs.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        after();
    }

    public void insertTest(){
        before();
        String sql = "INSERT INTO auth_teacher (id,name,telephone,password,access_token,create_at,update_at,school_id,login_address,source,auth_status,apply_school_status) VALUES (99999,'Arthas','8899665544','abcd','dddd','1443322','1443332',1,'sss','abc','1',0) ON DUPLICATE KEY UPDATE id=VALUES(id)";
        System.out.println(sql);
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.addBatch();
            pstmt.executeBatch();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        after();
    }

    public void updateTest(){
        before();
        String sql = "UPDATE  auth_teacher SET name = 'Albert' WHERE id = 99999";
        System.out.println(sql);
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.addBatch();
            pstmt.executeBatch();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        after();
    }

    public void deleteTest(){
        before();
        String sql = "DELETE FROM   auth_teacher  WHERE id = 99999";
        System.out.println(sql);
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.addBatch();
            pstmt.executeBatch();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        after();
    }

}
