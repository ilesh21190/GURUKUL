/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Hostel;

import java.sql.*;

/**
 *
 * @author Sony
 */
public class HostelDatabase {

    Connection con = null;
    Statement stmt = null;
    String url, user, password;

    public HostelDatabase() throws Exception {
        Class.forName("org.postgresql.Driver");
        url = "jdbc:postgresql://localhost:5432/Hostel";
        user = "postgres";
        password = "ilesh";
        con = DriverManager.getConnection(url, user, password);
    }

    public int insertStatement(String query) throws Exception {
        int rowsAffected = 0;
        stmt = con.createStatement();
        rowsAffected = stmt.executeUpdate(query);
        return rowsAffected;

    }

    public ResultSet getQueryResult(String query) throws Exception {
        ResultSet rs = null;

        stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        rs = stmt.executeQuery(query);
        return rs;
    }
}
