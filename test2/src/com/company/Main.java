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
            String query = "select * from carsdb.car";
            Statement statement = connection.createStatement();
            ResultSet resSet = statement.executeQuery(query);
             while (resSet.next()){
                 int id;
                 String Mark;
                 String Number;
                 String DriverId;


                 id = resSet.getInt("id");
                 Mark = resSet.getString("Mark");
                 Number = resSet.getString("Number");
                 DriverId = resSet.getString("DriverId");


                 Carsbd carsbd = new Carsbd(id,Mark,Number,DriverId);
                 writer.write("carsbd");

                 System.out.println(carsbd + file);

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
