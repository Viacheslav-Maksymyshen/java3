package com.company;

public class ConnectJ {
    private String URL = "jdbc:mysql://localhost:3307/carsdb?autoReconnect=true&useSSL=false";
    private String PASSWORD = "3851368";
    private String USER = "root";
    private String CLASSFORNAME = "com.mysql.jdbc.Driver";

    public String getPASSWORD() {
        return this.PASSWORD;
    }

    public String getURL() {
        return this.URL;
    }

    public String getUSER() {
        return this.USER;
    }

    public String getCLASSFORNAME() {return this.CLASSFORNAME;}
}
