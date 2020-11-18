package io.kimmking.springboot01.Jdbc;





import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.sql.*;

/**
 * Created by zy on 2020/11/18.
 */
public class MysqlConnector {
    static final String JDBC_DRIVER = "com.mysql.jdbc.jdbc2.optional.MysqlDataSource";
    static final String SERVER_NAME = "118.190.65.33";
    static final String PORT = "3306";
    static final String DB = "jingtongcloud";
    static final String USER = "root";
    static final String PASS = "Jby&*2016";
    static final int DB_MAX_CONN = 1;
    static Connection conn = null;
    static Statement stmt = null;
    static private PreparedStatement pstmt;
    long executionStart;
    long executionEnd;
    static public MysqlConnector loadDriver = null;
    static HikariDataSource dataSource = null;
    public static MysqlConnector getInstance(){
        //DCL
        if(loadDriver == null){
            synchronized (MysqlConnector.class){
                try {
                    // 注册 JDBC 驱动
                    Class.forName(JDBC_DRIVER);
                    HikariConfig config = new HikariConfig();
                    config.setMaximumPoolSize(DB_MAX_CONN);
                    config.setDataSourceClassName(JDBC_DRIVER);
                    config.addDataSourceProperty("serverName", SERVER_NAME);
                    config.addDataSourceProperty("port", PORT);
                    config.addDataSourceProperty("databaseName", DB);
                    config.addDataSourceProperty("user", USER);
                    config.addDataSourceProperty("password", PASS);
                    dataSource = new HikariDataSource(config);

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

    public static void stopConnection() {
      dataSource.close();
    }

    void before(){
        try {
            // 打开链接
            executionStart = System.currentTimeMillis();
            System.out.println("连接数据库...");
            conn = dataSource.getConnection();
            conn.setAutoCommit(false);
            if (pstmt != null) {
                pstmt.clearParameters();
                pstmt.clearBatch();
            }

        }
        catch(SQLException e){
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
