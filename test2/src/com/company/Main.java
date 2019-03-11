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
            writer.write("Марка автомобиля\tГосударственный номер\tТип(легковой/грузовой)\tФИО водителя\tМарка топлива\t" +
                    "Средний расход топлива\tПоказання одоментра на конец предыдущего месяца\tоказання одоментра на конец текущего месяца\n");
             while (resSet.next()){
                 String mark = resSet.getString("Mark");
                 String number = resSet.getString("Number");
                 String type = resSet.getString("type");
                 String fuel = resSet.getString("Fuel");
                 String name = resSet.getString("Name");
                 String pricePerMonth = resSet.getString("PricePerMonth");

                 writer.write(String.format("%s\t%s\t%s\t%s\t%s\t%s\n", mark, number, type, fuel, name, pricePerMonth));

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
