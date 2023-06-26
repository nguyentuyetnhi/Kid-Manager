/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.skillList;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import model.DBUnitil.DatabaseInfo;

/**
 *
 * @author DELL-G3
 */
public class SkillListDB {

    public ArrayList<SkillList> getAllSkillByIdTeacher(String id, int offet) {
        ArrayList<SkillList> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT  [SkillList].[idSkill]\n"
                    + "      ,[SkillList].[skillName]\n"
                    + "      ,[SkillList].[idTeacher]\n"
                    + "      ,[SkillList].[totalSeat]\n"
                    + "      ,[SkillList].[timeStartSemester]\n"
                    + "      ,[SkillList].[timeEndSemester]\n"
                    + "      ,[SkillList].[timeFrom]\n"
                    + "      ,[SkillList].[timeTo]\n"
                    + "      ,[SkillList].[tuition]\n"
                    + "      ,[SkillList].[status]\n"
                    + "      ,[SkillList].[condition]\n"
                    + "  FROM [A01_RT03].[dbo].[SkillList] where [SkillList].[idTeacher]='" + id + "'"
                    + "order by [SkillList].[timeStartSemester] DESC,[SkillList].[timeEndSemester]ASC"
                    + " OFFSET  ? ROWS FETCH NEXT 2 ROWS ONLY;");
            stmt.setInt(1, (offet - 1) * 2);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                String idSkill = rs.getString(1);
                String skillName = rs.getString(2);
                String idTeacher = rs.getString(3);
                int totalSeat = rs.getInt(4);
                LocalDateTime timeStartSemester = rs.getTimestamp(5).toLocalDateTime();
                LocalDateTime timeEndSemester = rs.getTimestamp(6).toLocalDateTime();
                LocalDateTime timeFrom = rs.getTimestamp(7).toLocalDateTime();
                LocalDateTime timeTo = rs.getTimestamp(8).toLocalDateTime();
                int tuition = rs.getInt(9);
                String status = rs.getString(10);
                String condition = rs.getString(11);
                // idSkill,  className,  idTeacher,  totalSeat,  timeStartSemester,  timeEndSemester,  timeFrom,  timeTo,  tuition,  status
                list.add(new SkillList(idSkill, skillName, idTeacher, totalSeat, timeStartSemester, timeEndSemester, timeFrom, timeTo, tuition, status, condition));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    public SkillList getAllSkillById(String id) {
        SkillList list = null;
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT [SkillList].[idSkill]\n"
                    + "      ,[SkillList].[skillName]\n"
                    + "      ,[SkillList].[idTeacher]\n"
                    + "      ,[SkillList].[totalSeat]\n"
                    + "      ,[timeStartSemester]\n"
                    + "      ,[SkillList].[timeEndSemester]\n"
                    + "      ,[SkillList].[timeFrom]\n"
                    + "      ,[SkillList].[timeTo]\n"
                    + "      ,[SkillList].[tuition]\n"
                    + "      ,[SkillList].[status]\n"
                    + "      ,[condition]\n"
                    + "	  ,Users.idUser\n"
                    + "  FROM [dbo].[SkillList]\n"
                    + "   INNER JOIN Users\n"
                    + "   ON  Users.idUser =[SkillList].[idTeacher]\n"
                    + "   Where [SkillList].[idSkill]='" + id + "'");

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                String idClass = rs.getString(1);
                String className = rs.getString(2);
                String idTeacher = rs.getString(3);
                int totalSeat = rs.getInt(4);
                LocalDateTime timeStartSemester = rs.getTimestamp(5).toLocalDateTime();
                LocalDateTime timeEndSemester = rs.getTimestamp(6).toLocalDateTime();
                LocalDateTime timeFrom = rs.getTimestamp(7).toLocalDateTime();
                LocalDateTime timeTo = rs.getTimestamp(8).toLocalDateTime();
                int tuition = rs.getInt(9);
                String status = rs.getString(10);
                String condition = rs.getString(11);
                // idClass,  className,  idTeacher,  totalSeat,  timeStartSemester,  timeEndSemester,  timeFrom,  timeTo,  tuition,  status
                list = new SkillList(idClass, className, idTeacher, totalSeat, timeStartSemester, timeEndSemester, timeFrom, timeTo, tuition, status, condition);
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    public ArrayList<SkillList> getAllSkil(int offet) {
        ArrayList<SkillList> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT  [SkillList].[idSkill]\n"
                    + "      ,[SkillList].[skillName]\n"
                    + "      ,[SkillList].[idTeacher]\n"
                    + "      ,[SkillList].[totalSeat]\n"
                    + "      ,[SkillList].[timeStartSemester]\n"
                    + "      ,[SkillList].[timeEndSemester]\n"
                    + "      ,[SkillList].[timeFrom]\n"
                    + "      ,[SkillList].[timeTo]\n"
                    + "      ,[SkillList].[tuition]\n"
                    + "      ,[SkillList].[status]\n"
                    + "      ,[SkillList].[condition]\n"
                    + "  FROM [A01_RT03].[dbo].[SkillList]"
                    + "order by [SkillList].[timeStartSemester] DESC,[SkillList].[timeEndSemester]ASC"
                    + " OFFSET  ? ROWS FETCH NEXT 2 ROWS ONLY;");
            stmt.setInt(1, (offet - 1) * 2);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                String idSkill = rs.getString(1);
                String skillName = rs.getString(2);
                String idTeacher = rs.getString(3);
                int totalSeat = rs.getInt(4);
                LocalDateTime timeStartSemester = rs.getTimestamp(5).toLocalDateTime();
                LocalDateTime timeEndSemester = rs.getTimestamp(6).toLocalDateTime();
                LocalDateTime timeFrom = rs.getTimestamp(7).toLocalDateTime();
                LocalDateTime timeTo = rs.getTimestamp(8).toLocalDateTime();
                int tuition = rs.getInt(9);
                String status = rs.getString(10);
                String condition = rs.getString(11);
                // idSkill,  className,  idTeacher,  totalSeat,  timeStartSemester,  timeEndSemester,  timeFrom,  timeTo,  tuition,  status
                list.add(new SkillList(idSkill, skillName, idTeacher, totalSeat, timeStartSemester, timeEndSemester, timeFrom, timeTo, tuition, status, condition));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    public int getTotal() {
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("Select count(*) from SkillList");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            throw new RuntimeException("something wrong!");
        }
        return 0;
    }
}
