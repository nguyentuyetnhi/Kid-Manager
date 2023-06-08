/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.User;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author ASUS-PRO
 */
public class ClassSkill {
     private String idSkill, idChildCour,idteacher;
     private LocalDateTime startDate, endDate;
     private String className;
     private int totalSeat;
     private String status;
     private LocalDateTime timeStart, timeEnd;
     private String skillName;

    public ClassSkill() {
    }

    public ClassSkill(String idSkill, String idChildCour, String idteacher, LocalDateTime startDate, LocalDateTime endDate, String className, int totalSeat, String status, LocalDateTime timeStart, LocalDateTime timeEnd, String skillName) {
        this.idSkill = idSkill;
        this.idChildCour = idChildCour;
        this.idteacher = idteacher;
        this.startDate = startDate;
        this.endDate = endDate;
        this.className = className;
        this.totalSeat = totalSeat;
        this.status = status;
        this.timeStart = timeStart;
        this.timeEnd = timeEnd;
        this.skillName = skillName;
    }

    public String getIdSkill() {
        return idSkill;
    }

    public void setIdSkill(String idSkill) {
        this.idSkill = idSkill;
    }

    public String getIdChildCour() {
        return idChildCour;
    }

    public void setIdChildCour(String idChildCour) {
        this.idChildCour = idChildCour;
    }

    public String getIdteacher() {
        return idteacher;
    }

    public void setIdteacher(String idteacher) {
        this.idteacher = idteacher;
    }

    public LocalDateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDateTime startDate) {
        this.startDate = startDate;
    }

    public LocalDateTime getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDateTime endDate) {
        this.endDate = endDate;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public int getTotalSeat() {
        return totalSeat;
    }

    public void setTotalSeat(int totalSeat) {
        this.totalSeat = totalSeat;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDateTime getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(LocalDateTime timeStart) {
        this.timeStart = timeStart;
    }

    public LocalDateTime getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(LocalDateTime timeEnd) {
        this.timeEnd = timeEnd;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    @Override
    public String toString() {
        return "ClassSkill{" + "idSkill=" + idSkill + 
                ", idChildCour=" + idChildCour + ", idteacher=" 
                + idteacher + ", startDate=" + startDate + ", endDate=" + 
                endDate + ", className=" + className + ", totalSeat=" + totalSeat + ", status=" + status + ", timeStart=" + timeStart + ", timeEnd=" + timeEnd + ", skillName=" + skillName + '}';
    }

    
    
    public String getStartDate1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
         String startDate1 =getStartDate().format(formatter);
        return startDate1;
    }
    public String getEndDate1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
         String startDate1 =getEndDate().format(formatter);
        return startDate1;
    }

    public String getTimeStart1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
         String startDate1 =getTimeStart().format(formatter);
        return startDate1;
    }
    public String getTimeEnd1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
         String startDate1 =getTimeEnd().format(formatter);
        return startDate1;
    }
}