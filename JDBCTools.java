package com.linhc.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.*;

public class JDBCTools {
    private static DataSource dataSource;

    static {
        dataSource = new ComboPooledDataSource("testc3p0");//加载数据源
    }

    public static Connection getConnection(){
        Connection connection = null;
        try {
            connection = dataSource.getConnection();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }

    public static void release(Connection connection,PreparedStatement preparedStatement, ResultSet resultSet){
        try {
            if (connection != null){
                connection.close();
            }if (preparedStatement != null){
                preparedStatement.close();
            }if(resultSet != null){
                resultSet.close();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void main(String[] args) {
        System.out.println(JDBCTools.getConnection());
    }

}
