package com.company;

public class Carsbd {

    private int id;
    private String Mark;
    private String Number;
    private String DriverId;





    public Carsbd(){}
    public Carsbd(int id, String Mark, String Number, String DriverId) {
        this.id = id;
        this.Mark = Mark;
        this.Number = Number;
        this.DriverId = DriverId;



    }
    @Override
    public String toString(){
        return  "Carsdb: [ "+ id + "\t"
                + Mark + "\t"
                + Number + "\t"
                + DriverId + "]";
    }
}