/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dmodel.SkillCourse;

/**
 *
 * @author DELL-G3
 */
public class SkillCourse {
    private String idSkillCourse,skillName;
    private int priceSkillCourse;

    public SkillCourse() {
    }

    public SkillCourse(String idSkillCourse, String skillName, int priceSkillCourse) {
        this.idSkillCourse = idSkillCourse;
        this.skillName = skillName;
        this.priceSkillCourse = priceSkillCourse;
    }

    public String getIdSkillCourse() {
        return idSkillCourse;
    }

    public void setIdSkillCourse(String idSkillCourse) {
        this.idSkillCourse = idSkillCourse;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public int getPriceSkillCourse() {
        return priceSkillCourse;
    }

    public void setPriceSkillCourse(int priceSkillCourse) {
        this.priceSkillCourse = priceSkillCourse;
    }

    @Override
    public String toString() {
        return "SkillCourse{" + "idSkillCourse=" + idSkillCourse + ", skillName=" + skillName + ", priceSkillCourse=" + priceSkillCourse + '}';
    }
}