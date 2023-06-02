/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.User;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.UsersDB.UsersDB;

/**
 *
 * @author PC
 */
public class Child {

    private String idChild;
    private String childName;
    private String idUser;
    private Date dob;
    private String gender;
    private String progress;
    private double weight;
    private int height;
    private String health;
    private String imgAvt;

    public Child() {
    }

    public Child(String idChild, String childName, String idUser, Date dob, String gender, String progress, double weight, int height, String health, String imgAvt) {
        this.idChild = idChild;
        this.childName = childName;
        this.idUser = idUser;
        this.dob = dob;
        this.gender = gender;
        this.progress = progress;
        this.weight = weight;
        this.height = height;
        this.health = health;
        this.imgAvt = imgAvt;
    }

    public Child(String idChild, String childName, String idUser, String dob, String gender, String progress, double weight, int height, String health, String imgAvt) {
        this.idChild = idChild;
        this.childName = childName;
        this.idUser = idUser;
        setDob(dob);
        this.gender = gender;
        this.progress = progress;
        this.weight = weight;
        this.height = height;
        this.health = health;
        this.imgAvt = imgAvt;
    }

    public String getIdChild() {
        return idChild;
    }

    public void setIdChild(String idChild) {
        this.idChild = idChild;
    }

    public String getChildName() {
        return childName;
    }

    public void setChildName(String childName) {
        this.childName = childName;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getDob() {
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
        return sd.format(dob);
    }

    public Date getDateOB() {
        return dob;
    }

    public void setDob(String Dob) {
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
        try {
            this.dob = new java.sql.Date(sd.parse(Dob).getTime());
        } catch (Exception ex) {
            Logger.getLogger(UsersDB.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Invalid DOB");
        }
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getProgress() {
        return progress;
    }

    public void setProgress(String progress) {
        this.progress = progress;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    

    public String getHealth() {
        return health;
    }

    public void setHealth(String health) {
        this.health = health;
    }

    public String getImgAvt() {
        return imgAvt;
    }

    public void setImgAvt(String imgAvt) {
        this.imgAvt = imgAvt;
    }

}
