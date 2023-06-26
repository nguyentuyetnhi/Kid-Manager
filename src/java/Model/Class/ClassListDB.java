/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.Class;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import model.DBUnitil.DatabaseInfo;

/**
 *
 * @author ASUS-PRO
 */
public class ClassListDB {

    public static boolean addClassList(ClassList classList) {
        boolean result = false;
        Connection con = null;
        try {
            con = DatabaseInfo.getConnect();
            if (con != null) {
                String sql = "INSERT INTO [dbo].[ClassList]\n"
                        + "           ([idClass]\n"
                        + "           ,[className]\n"
                        + "           ,[idTeacher]\n"
                        + "           ,[totalSeat]\n"
                        + "           ,[timeStartSemester]\n"
                        + "           ,[timeEndSemester]\n"
                        + "           ,[timeFrom]\n"
                        + "           ,[timeTo]\n"
                        + "           ,[tuition]\n"
                        + "           ,[status]\n"
                        + "           ,[condition])\n"
                        + "     VALUES\n"
                        + "           (?,? ,? ,?,? ,? ,?,?,?  ,? ,?)";
                PreparedStatement stmt = con.prepareStatement(sql);
                stmt.setString(1, classList.getIdClass());
                stmt.setString(2, classList.getClassName());
                stmt.setString(3, classList.getIdTeacher());
                stmt.setInt(4, classList.getTotalSeat());
                stmt.setTimestamp(5, Timestamp.valueOf(classList.getTimeStartSemester()));
                stmt.setTimestamp(6, Timestamp.valueOf(classList.getTimeEndSemester()));
                stmt.setTimestamp(7, Timestamp.valueOf(classList.getTimeFrom()));
                stmt.setTimestamp(8, Timestamp.valueOf(classList.getTimeTo()));
                stmt.setInt(9, classList.getTuition());
                stmt.setString(10, classList.getStatus());
                stmt.setString(11, classList.getCondition());
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

    public void regisClas(String idRegist, String idChild, String idClass, String status) {
        try ( Connection con = DatabaseInfo.getConnect()) {
            String sql = "INSERT INTO [dbo].[Class] ([idRegist]\n"
                    + "           ,[idChild] ,[idClass] ,[status])  VALUES\n"
                    + "           (?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, idRegist);
            stmt.setString(2, idChild);
            stmt.setString(3, idClass);
            stmt.setString(4, status);
            stmt.executeUpdate();
            con.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void UpdateStatus(String id, String status) {
        try ( Connection con = DatabaseInfo.getConnect()) {
            String sql = "UPDATE [dbo].[Class] SET [status] = ?  WHERE [idChild] = ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, status);
            stmt.setString(2, id);
            int rs = stmt.executeUpdate();
            con.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public ClassList getAllClassById(String id) {
        ClassList list = null;
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT [ClassList].[idClass]\n"
                    + "      ,[ClassList].[className]\n"
                    + "      ,[ClassList].[idTeacher]\n"
                    + "      ,[ClassList].[totalSeat]\n"
                    + "      ,[timeStartSemester]\n"
                    + "      ,[ClassList].[timeEndSemester]\n"
                    + "      ,[ClassList].[timeFrom]\n"
                    + "      ,[ClassList].[timeTo]\n"
                    + "      ,[ClassList].[tuition]\n"
                    + "      ,[ClassList].[status]\n"
                    + "      ,[condition]\n"
                    + "	  ,Users.idUser\n"
                    + "  FROM [dbo].[ClassList]\n"
                    + "   INNER JOIN Users\n"
                    + "   ON  Users.idUser =[ClassList].[idTeacher]\n"
                    + "   Where [ClassList].[idClass]='" + id + "'");

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
                list = new ClassList(idClass, className, idTeacher, totalSeat, timeStartSemester, timeEndSemester, timeFrom, timeTo, tuition, status, condition);
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    public ArrayList<ClassList> getAllClassByIdTeacher(String id, int offet) {
        ArrayList<ClassList> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT  [ClassList].[idClass]\n"
                    + "      ,[ClassList].[className]\n"
                    + "      ,[ClassList].[idTeacher]\n"
                    + "      ,[ClassList].[totalSeat]\n"
                    + "      ,[ClassList].[timeStartSemester]\n"
                    + "      ,[ClassList].[timeEndSemester]\n"
                    + "      ,[ClassList].[timeFrom]\n"
                    + "      ,[ClassList].[timeTo]\n"
                    + "      ,[ClassList].[tuition]\n"
                    + "      ,[ClassList].[status]\n"
                    + "      ,[ClassList].[condition]\n"
                    + "  FROM [A01_RT03].[dbo].[ClassList] where [ClassList].[idTeacher]='" + id + "'"
                    + "order by [ClassList].[timeStartSemester] DESC,[ClassList].[timeEndSemester]ASC "
                    + "OFFSET  ? ROWS FETCH NEXT 2 ROWS ONLY;");
            stmt.setInt(1, (offet - 1) * 2);
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
                list.add(new ClassList(idClass, className, idTeacher, totalSeat, timeStartSemester, timeEndSemester, timeFrom, timeTo, tuition, status, condition));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    public ArrayList<ClassList> getAllClass(int offet) {
        ArrayList<ClassList> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT [idClass]\n"
                    + "      ,[className]\n"
                    + "      ,[idTeacher]\n"
                    + "      ,[totalSeat]\n"
                    + "      ,[timeStartSemester]\n"
                    + "      ,[timeEndSemester]\n"
                    + "      ,[timeFrom]\n"
                    + "      ,[timeTo]\n"
                    + "      ,[tuition]\n"
                    + "      ,[status]\n"
                    + "      ,[condition]\n"
                    + "  FROM [dbo].[ClassList]\n"
                    + "  order by [ClassList].[timeStartSemester] DESC,[ClassList].[timeEndSemester]ASC\n"
                    + "  OFFSET  ? ROWS FETCH NEXT 2 ROWS ONLY");
            stmt.setInt(1, (offet - 1) * 2);
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
                list.add(new ClassList(idClass, className, idTeacher, totalSeat, timeStartSemester, timeEndSemester, timeFrom, timeTo, tuition, status, condition));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    public ArrayList<ClassList> getAllClassByNameClass() {
        ArrayList<ClassList> list = new ArrayList<>();
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("SELECT  [ClassList].[idClass]\n"
                    + "      ,[ClassList].[className]\n"
                    + "      ,[ClassList].[idTeacher]\n"
                    + "      ,[ClassList].[totalSeat]\n"
                    + "      ,[ClassList].[timeStartSemester]\n"
                    + "      ,[ClassList].[timeEndSemester]\n"
                    + "      ,[ClassList].[timeFrom]\n"
                    + "      ,[ClassList].[timeTo]\n"
                    + "      ,[ClassList].[tuition]\n"
                    + "      ,[ClassList].[status]\n"
                    + "      ,[ClassList].[condition]\n"
                    + "  FROM [A01_RT03].[dbo].[ClassList]"
                    + "order by [ClassList].[className]DESC");
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
// ClassList(cid, bid, idt, startDate, endDate, name, totalSeat, timeStart, timeEnd, "", status)
                list.add(new ClassList(idClass, className, idTeacher, totalSeat, timeStartSemester, timeEndSemester, timeFrom, timeTo, tuition, status, condition));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }

    public int getTotal() {
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("Select count(*) from ClassList");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            throw new RuntimeException("something wrong!");
        }
        return 0;
    }

//    public static void main(String[] args) {
//        ClassListDB c = new ClassListDB();
//        List<ClassList> cs = c.getAllClassByNameClass();
//        for (ClassList c1 : cs) {
//            System.out.println(c1);
//        }
//    }
}
