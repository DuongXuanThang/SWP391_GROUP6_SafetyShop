/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;


/**
 *
 * @author Duong Xuan Thang
 */
public class Order {
    private int id;
    private String date;
    private int cusid;
    private double totalmoney;
    private String status;
    private String endDate;
    public Order(){
        
    }

    public Order(int id, String date, int cusid, double totalmoney, String status, String endDate) {
        this.id = id;
        this.date = date;
        this.cusid = cusid;
        this.totalmoney = totalmoney;
        this.status = status;
        this.endDate = endDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }



    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getCusid() {
        return cusid;
    }

    public void setCusid(int cusid) {
        this.cusid = cusid;
    }

    public double getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(double totalmoney) {
        this.totalmoney = totalmoney;
    }

//    @Override
//    public String toString() {
//        return "Order{" + "id=" + id + ", date=" + date + ", cusid=" + cusid + ", totalmoney=" + totalmoney + '}';
//    }
//    

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", date=" + date + ", cusid=" + cusid + ", totalmoney=" + totalmoney + ", status=" + status + ", endDate=" + endDate + '}';
    }


   
    
}

