/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.skillList;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author DELL-G3
 */
public class SkillList {
    private String idSkill;
     private String skillName;
     private String idTeacher;
     private int totalSeat;
     private LocalDateTime timeStartSemester;
     private LocalDateTime timeEndSemester;
     private LocalDateTime timeFrom;
     private LocalDateTime timeTo;
     private int tuition;
     private String status;
       private String condition;
    public SkillList() {
    }

    public SkillList(String idClass, String className, String idTeacher, int totalSeat, LocalDateTime timeStartSemester, LocalDateTime timeEndSemester, LocalDateTime timeFrom, LocalDateTime timeTo, int tuition, String status, String condition) {
        this.idSkill = idClass;
        this.skillName = className;
        this.idTeacher = idTeacher;
        this.totalSeat = totalSeat;
        this.timeStartSemester = timeStartSemester;
        this.timeEndSemester = timeEndSemester;
        this.timeFrom = timeFrom;
        this.timeTo = timeTo;
        this.tuition = tuition;
        this.status = status;
        this.condition=condition;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

   

    public String getIdSkill() {
        return idSkill;
    }

    public void setIdSkill(String idSkill) {
        this.idSkill = idSkill;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public String getIdTeacher() {
        return idTeacher;
    }

    public void setIdTeacher(String idTeacher) {
        this.idTeacher = idTeacher;
    }

    public int getTotalSeat() {
        return totalSeat;
    }

    public void setTotalSeat(int totalSeat) {
        this.totalSeat = totalSeat;
    }

    public LocalDateTime getTimeStartSemester() {
        return timeStartSemester;
    }

    public void setTimeStartSemester(LocalDateTime timeStartSemester) {
        this.timeStartSemester = timeStartSemester;
    }

    public LocalDateTime getTimeEndSemester() {
        return timeEndSemester;
    }

    public void setTimeEndSemester(LocalDateTime timeEndSemester) {
        this.timeEndSemester = timeEndSemester;
    }

    public LocalDateTime getTimeFrom() {
        return timeFrom;
    }

    public void setTimeFrom(LocalDateTime timeFrom) {
        this.timeFrom = timeFrom;
    }

    public LocalDateTime getTimeTo() {
        return timeTo;
    }

    public void setTimeTo(LocalDateTime timeTo) {
        this.timeTo = timeTo;
    }

    public int getTuition() {
        return tuition;
    }

    public void setTuition(int tuition) {
        this.tuition = tuition;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }


    public String getStartDate1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
         String startDate1 =getTimeStartSemester().format(formatter);
        return startDate1;
    }
     public String getFromDate1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
         String startDate1 =getTimeFrom().format(formatter);
        return startDate1;
    }
      public String getToDate1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
         String startDate1 =getTimeTo().format(formatter);
        return startDate1;
    }
    public String getEndDate1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
         String startDate1 =getTimeEndSemester().format(formatter);
        return startDate1;
    }

    public String getTimeStart1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
         String startDate1 =getTimeFrom().format(formatter);
        return startDate1;
    }
    public String getTimeEnd1() {
         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
         String startDate1 =getTimeTo().format(formatter);
        return startDate1;
    }
}