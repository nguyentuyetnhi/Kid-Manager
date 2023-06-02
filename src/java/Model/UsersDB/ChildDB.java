/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.UsersDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import model.DBUnitil.DatabaseInfo;
import model.User.Child;

/**
 *
 * @author PC
 */
// private String idChild;
//    private String childName;
//    private String idUser;
//    private Date dob;
//    private String gender;
//    private String progress;
//    private String weight;
//    private String height;
//    private String health;
//    private String imgAvt;
public class ChildDB {

    public static boolean newChild(Child c) {
        boolean result = false;
        Connection con = null;

        try {

            con = DatabaseInfo.getConnect();
            if (con != null) {
                String sql = " INSERT INTO "
                        + " Child(idChild, childName, idUser, dob, gender, progress, weight, height, health, imgAvt) "
                        + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

                PreparedStatement stmt = con.prepareStatement(sql);
                stmt.setString(1, c.getIdChild());
                stmt.setString(2, c.getChildName());
                stmt.setString(3, c.getIdUser());
                stmt.setDate(4, c.getDateOB());
                stmt.setString(5, c.getGender());
                stmt.setString(6, c.getProgress());
                stmt.setDouble(7, c.getWeight());
                stmt.setInt(8, c.getHeight());
                stmt.setString(9, c.getHealth());
                stmt.setString(10, c.getImgAvt());

                int value = stmt.executeUpdate();

                result = value > 0 ? true : false;
                con.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

        }
        return result;
    }
}
