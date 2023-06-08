/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.UsersDB;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import model.DBUnitil.DatabaseInfo;
import model.User.ClassSkill;

/**
 *
 * @author ASUS-PRO
 */
public class ClassDB {

//    public void registerClass(ClassSkill u) {
//        try ( Connection con = DatabaseInfo.getConnect()) {
//            String sql = "INSERT INTO [dbo].[SkillClass]\n"
//                    + "      ,[ChildCours].[idSkillCours]\n"
//                    + "      ,[ChildCours].[idTeacher]\n"
//                    + "      ,[ChildCours].[dateStart]\n"
//                    + "      ,[ChildCours].[dateEnd]\n"
//                    + "      ,[ChildCours].[name]\n"
//                    + "      ,[ChildCours].[TotalSeat]\n"
//                    + "      ,[ChildCours].[Status]\n"
//                    + "      ,[ChildCours].[timeStart]\n"
//                    + "      ,[ChildCours].[timeEnd]\n VALUES\n"
//                    + "           (?,?,?,?,?,?,?,?,?,??)";
//            PreparedStatement stmt = con.prepareStatement(sql);
//            stmt.setString(1, u.getIdChildCour());
//            stmt.setString(2, u.getIdSkill());
//            stmt.setString(3, u.getIdteacher());
////            stmt.setDate(4, u.getStartDate());
////            stmt.setDate(5, u.getEndDate());
//            stmt.setString(6, u.getClassName());
//            stmt.setInt(7, u.getTotalSeat());
//            stmt.setString(8, u.getStatus());
////            stmt.setDate(4, u.getStartDate());
////            stmt.setDate(5, u.getEndDate());
//            stmt.executeUpdate();
//            con.close();
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//    }

    public ArrayList<ClassSkill> getAllClassByIdTeacher(String id) {
        ArrayList<ClassSkill> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT  [ChildCours].[idChildCour]\n"
                    + "      ,[ChildCours].[idSkillCours]\n"
                    + "      ,[ChildCours].[idTeacher]\n"
                    + "      ,[ChildCours].[dateStart]\n"
                    + "      ,[ChildCours].[dateEnd]\n"
                    + "      ,[ChildCours].[name]\n"
                    + "      ,[ChildCours].[TotalSeat]\n"
                    + "      ,[ChildCours].[Status]\n"
                    + "      ,[ChildCours].[timeStart]\n"
                    + "      ,[ChildCours].[timeEnd]\n"
                    + "  FROM [ChildCours]\n"
                    + "  where [ChildCours].[idTeacher] = '" + id + "'");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String cid = rs.getString(1);
                String bid = rs.getString(2);
                String idt = rs.getString(3);
                LocalDateTime startDate = rs.getTimestamp(4).toLocalDateTime();
                LocalDateTime endDate = rs.getTimestamp(5).toLocalDateTime();
                String name = rs.getString(6);
                int totalSeat = rs.getInt(7);
                String status = rs.getString(8);
                LocalDateTime timeStart = rs.getTimestamp(9).toLocalDateTime();
                LocalDateTime timeEnd = rs.getTimestamp(10).toLocalDateTime();
                String skillName = rs.getString(11);

                //   String idSkill, String idChildCour, String nameClass, String idteacher, Date startDate, Date endDate)
                list.add(new ClassSkill(bid, cid, idt, startDate, endDate, name, totalSeat, status, timeStart, timeEnd,skillName));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    public List<ClassSkill> getAllClassByNameClass() {
        List<ClassSkill> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT  [ChildCours].[idChildCour]\n"
                    + "      ,[ChildCours].[idSkillCours]\n"
                    + "      ,[ChildCours].[idTeacher]\n"
                    + "      ,[ChildCours].[dateStart]\n"
                    + "      ,[ChildCours].[dateEnd]\n"
                    + "      ,[ChildCours].[name]\n"
                    + "      ,[ChildCours].[TotalSeat]\n"
                    + "      ,[ChildCours].[timeStart]\n"
                    + "      ,[ChildCours].[timeEnd]\n"
                    + "      ,[ChildCours].[Status]\n"
                    + " ,[SkillCours].[skillName] FROM [ChildCours] INNER JOIN [SkillCours] ON [ChildCours].[idSkillCours]=[SkillCours].[idSkillCour]");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String cid = rs.getString(1);
                String bid = rs.getString(2);
                String idt = rs.getString(3);
                LocalDateTime startDate = rs.getTimestamp(4).toLocalDateTime();
                LocalDateTime endDate = rs.getTimestamp(5).toLocalDateTime();
                String nameClass = rs.getString(6);
                int totalSeat = rs.getInt(7);
                
                LocalDateTime timeStart = rs.getTimestamp(8).toLocalDateTime();
                LocalDateTime timeEnd = rs.getTimestamp(9).toLocalDateTime();
                
                String status = rs.getString(10);
                String skillName = rs.getString(11);

                list.add(new ClassSkill(bid, cid, idt, startDate, endDate, nameClass, totalSeat, status, timeStart, timeEnd,skillName));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
    
    
    
    

    public int getTotal() {
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("Select count(*) from SkillClass");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            throw new RuntimeException("something wrong!");
        }
        return 0;
    }

    public static void main(String[] args) {
        ClassDB c = new ClassDB();
        List<ClassSkill> cs = c.getAllClassByNameClass();
        for (ClassSkill c1 : cs) {
            System.out.println(c1);
        }
    }
}