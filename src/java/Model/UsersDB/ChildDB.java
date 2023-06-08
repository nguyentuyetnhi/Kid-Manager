/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.UsersDB;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.DBUnitil.DatabaseInfo;
import model.User.Child;
import model.User.Users;

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

    public static List<Child> getChildbyIdParent(String idParent) throws SQLException {

        Connection con = null;

        List<Child> listChild = new ArrayList<>();

        PreparedStatement pstm = null;
        ResultSet rs = null;
        try {
            con = DatabaseInfo.getConnect();
            if (con != null) {

                String sql = "SELECT idChild, childName, idUser, dob, gender, progress, weight, height, health, imgAvt "
                        + " FROM Child "
                        + " where idUser = ?";

                pstm = con.prepareStatement(sql);
                pstm.setString(1, idParent);

                rs = pstm.executeQuery();

                while (rs.next()) {
                    String idChild = rs.getString(1);
                    String childName = rs.getString(2);
                    String idUser = rs.getString(3);
                    Date dob = rs.getDate(4);
                    String gender = rs.getString(5);
                    String progress = rs.getString(6);
                    double weight = rs.getDouble(7);
                    int height = rs.getInt(8);
                    String health = rs.getString(9);
                    String imgAvt = rs.getString(10);

                    listChild.add(new Child(idChild, childName, idUser, dob, gender, progress, weight, height, health, imgAvt));
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return listChild;
    }

    public ArrayList<Child> getAllUser(String idTeacher) {
        ArrayList<Child> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT [SkillClass].[idClass]\n"
                    + "      ,[SkillClass].[idChild]\n"
                    + "      ,[SkillClass].[idChildCour]\n"
                    + "      ,[SkillClass].[idTeacher]\n"
                    + "      ,[childName]\n"
                    + "      ,[idUser]\n"
                    + "      ,[dob]\n"
                    + "      ,[gender]\n"
                    + "      ,[progress]\n"
                    + "      ,[weight]\n"
                    + "      ,[height]\n"
                    + "      ,[health]\n"
                    + "      ,[imgAvt]\n"
                    + "  FROM [SkillClass]\n"
                    + "  INNER JOIN Child\n"
                    + "  ON Child.idChild  = SkillClass.idChild\n"
                    + "   INNER JOIN ChildCours\n"
                    + "  ON [ChildCours].idChildCour = [SkillClass].[idChildCour] \n"
                    + "  where [ChildCours].idChildCour ='" + idTeacher + "'\n"
                    + "  order by idChild");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String idChild = rs.getString(2);
                Date dob = rs.getDate(7);
                String childName = rs.getString(5);
                String idUser = rs.getString(6);
                String gender = rs.getString(8);
                String progress = rs.getString(9);
                double weight = rs.getDouble(10);
                int height = rs.getInt(11);
                String health = rs.getString(12);
                String imgAvt = rs.getString(13);
         
                list.add(new Child(idChild, childName, idUser, dob, gender, progress, weight, height, health, imgAvt));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException("something wrong!");
        }
    }
}
