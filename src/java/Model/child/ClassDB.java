/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.child;

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

    public static boolean registerClass(ClassSkill u) {
        boolean check = false;
        try ( Connection con = DatabaseInfo.getConnect()) {
            String sql = "INSERT INTO [dbo].[SkillClass]\n"
                    + "      ([SkillClass].[idClass]\n"
                    + "      ,[SkillClass].[idChild]\n"
                    + "      ,[SkillClass].[idChildCour]\n"
                    + "      ,[SkillClass].[idTeacher]\n"
                    + "      ,[SkillClass].[Status])\n"
                    + "       VALUES(?,?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, u.getIdClass());
            stmt.setString(2, u.getIdchild());
            stmt.setString(3, u.getIdChildCour());
            stmt.setString(4, u.getIdteacher());
            stmt.setString(5, u.getStatus());
            int value = stmt.executeUpdate();
            check = value > 0 ? true : false;;
            con.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return check;
    }
    public ArrayList<ClassSkill> getAllClassByIdTeacher(String id) {
        ArrayList<ClassSkill> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT  "
                    + "       [ChildCours].[idChildCour]\n"
                    + "      ,[ChildCours].[idSkillCours]\n"
                    + "      ,[ChildCours].[idTeacher]\n"
                    + "      ,[ChildCours].[dateStart]\n"
                    + "      ,[ChildCours].[dateEnd]\n"
                    + "      ,[ChildCours].[name]\n"
                    + "      ,[ChildCours].[TotalSeat]\n"
                    + "      ,[ChildCours].[timeStart]\n"
                    + "      ,[ChildCours].[timeEnd]\n"
                    + "      ,[ChildCours].[Status]\n"
                    + "  FROM [ChildCours]\n"
                    + "  where [ChildCours].[idTeacher] = '" + id + "'");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                
//        this.idChildCour = idChildCour;
//        this.idSkill = idSkill;
//        this.idteacher = idteacher;
//        this.startDate = startDate;
//        this.endDate = endDate;
//        this.className = className;
//        this.totalSeat = totalSeat;
//        this.timeStart = timeStart;
//        this.timeEnd = timeEnd;
//        this.skillName = skillName;
//        this.status = status;
        
                String idChildCour = rs.getString(1);
                String idSkill = rs.getString(2);
                String idteacher = rs.getString(3);
                LocalDateTime startDate = rs.getTimestamp(4).toLocalDateTime();
                LocalDateTime endDate = rs.getTimestamp(5).toLocalDateTime();
                String name = rs.getString(6);
                int totalSeat = rs.getInt(7);
                LocalDateTime timeStart = rs.getTimestamp(8).toLocalDateTime();
                LocalDateTime timeEnd = rs.getTimestamp(9).toLocalDateTime();
//              String skillName = rs.getString(10);
                String status = rs.getString(10);
//                         idChildCour,  idSkill,  idteacher,  startDate,  endDate,  className,  totalSeat,  timeStart,  timeEnd,  skillName,  status

                list.add(new ClassSkill(idChildCour, idSkill, idteacher, startDate, endDate, name, totalSeat, timeStart, timeEnd, "", status));
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
                    + " ,[SkillCours].[skillName],[SkillCours].[priceSkillCour] FROM [ChildCours] INNER JOIN [SkillCours] ON [ChildCours].[idSkillCours]=[SkillCours].[idSkillCour]");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                String idChildCour = rs.getString(1);
                String idSkill = rs.getString(2);
                String idteacher = rs.getString(3);
                LocalDateTime startDate = rs.getTimestamp(4).toLocalDateTime();
                LocalDateTime endDate = rs.getTimestamp(5).toLocalDateTime();
                String nameClass = rs.getString(6);
                int totalSeat = rs.getInt(7);

                LocalDateTime timeStart = rs.getTimestamp(8).toLocalDateTime();
                LocalDateTime timeEnd = rs.getTimestamp(9).toLocalDateTime();

                String status = rs.getString(10);
                String skillName = rs.getString(11);
                int priceSkillCour = rs.getInt(12);
// ClassSkill(cid, bid, idt, startDate, endDate, name, totalSeat, timeStart, timeEnd, "", status)
                list.add(new ClassSkill(idChildCour, idSkill, idteacher, startDate, endDate, nameClass, totalSeat, timeStart, timeEnd, skillName, priceSkillCour, status));
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

    public List<ClassSkill> getListClassOrderByName() {
        List<ClassSkill> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT  [ChildCours].[idChildCour]\n"
                    + "      ,[SkillClass].[idTeacher]\n"
                    + "      ,[SkillClass].[idChild]\n"
                    + "      ,[ChildCours].[name]\n"
                    + "      ,[ChildCours].[TotalSeat]\n"
                    + "      ,[ChildCours].[timeStart]\n"
                    + "      ,[ChildCours].[timeEnd]\n"
                    + "      ,[ChildCours].[Status]\n"
                    + " FROM [ChildCours] INNER JOIN [SkillClass] ON [ChildCours].[idChildCour]=[SkillClass].[idChildCour] order by [ChildCours].[name]");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                String idChildCour = rs.getString(1);
                String idTeacher = rs.getString(2);
                String idChild = rs.getString(3);
                String nameClass = rs.getString(4).trim();
                int totalSeat = rs.getInt(5);
                LocalDateTime timeStart = rs.getTimestamp(6).toLocalDateTime();
                LocalDateTime timeEnd = rs.getTimestamp(7).toLocalDateTime();
                String status = rs.getString(8);
                list.add(new ClassSkill(idChildCour, idTeacher, idChild, nameClass, totalSeat, timeStart, timeEnd, status));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
}
