package com.company;

import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.*;

public class Main {

    public static void main(String[] args) throws IOException {
	ConnectJ connectJ = new ConnectJ();
        String file = "Отчет.txt";

        try (BufferedWriter writer = Files.newBufferedWriter(Paths.get(file))){
            Class.forName(connectJ.getCLASSFORNAME());
            Connection connection = DriverManager.getConnection(connectJ.getURL(),connectJ.getUSER(),connectJ.getPASSWORD());
            String query = "call getReport();";
            Statement statement = connection.createStatement();
            ResultSet resSet = statement.executeQuery(query);
             while (resSet.next()){
                 String mark;
                 String number_column;

                 mark = resSet.getString("Mark");
                 number_column = resSet.getString("Number");

                 writer.write(String.format("%s\t%s\n", mark, number_column));

                 System.out.println();
             }

            if (connection.isClosed()) {
                connection.close();
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
