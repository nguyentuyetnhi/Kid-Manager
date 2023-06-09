/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.skillCourse;

import model.skillCourse.SkillCourse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;
import model.DBUnitil.DatabaseInfo;

/**
 *
 * @author DELL-G3
 */
public class SkillCourseDB {

    public void addCourse(SkillCourse u) {
        try ( Connection con = DatabaseInfo.getConnect()) {
            String sql = "INSERT INTO [dbo].[SkillCours]\n"
                    + "           ([idSkillCour],[SkillName] ,[priceSkillCour]) VALUES\n"
                    + "           (?,?,?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, u.getIdSkillCourse());
            stmt.setString(2, u.getSkillName());
            stmt.setInt(3, u.getPriceSkillCourse());
            stmt.executeUpdate();
            con.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteCourse(String name) throws ClassNotFoundException {
        try ( Connection con = DatabaseInfo.getConnect()) {
            String sql = "DELETE FROM [dbo].[SkillCours]\n"
                    + "           WHERE skillName = ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateCourse(SkillCourse course) throws ClassNotFoundException {
        try ( Connection con = DatabaseInfo.getConnect()) {
            String sql = "UPDATE [dbo].[SkillCours]\n SET idSkillCour = ?,skillName = ?,priceSkillCour = ?  WHERE idSkillCour = ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, course.getIdSkillCourse());
            stmt.setString(2, course.getSkillName());
            stmt.setInt(3, course.getPriceSkillCourse());
            stmt.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

public ArrayList<SkillCourse> getSkillCourse(){
        try ( Connection con = DatabaseInfo.getConnect()) {
            String sql = "select * from SkillCours";
            PreparedStatement stmt = con.prepareStatement(sql);
                        ResultSet rs = stmt.executeQuery();
            ArrayList<SkillCourse> list = new ArrayList<>();
            while (rs.next()) {
                list.add(new SkillCourse(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3)
                )
                );
            }
            return list;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
        
        public static void main(String[] args) {
        SkillCourseDB b = new SkillCourseDB();
                ArrayList<SkillCourse> a = b.getSkillCourse();
            for (SkillCourse skillCourse : a) {
                System.out.println(skillCourse);
            }
    }
        
}