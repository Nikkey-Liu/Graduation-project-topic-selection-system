package com.liu.pojo;
import java.io.Serializable;
public class Student  implements Serializable{
	private static final long serialVersionUID = 1L;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column studentinftable.studentID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private Integer studentid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column studentinftable.studentName
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private String studentname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column studentinftable.studentSex
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private String studentsex;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column studentinftable.collegeID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private Integer collegeid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column studentinftable.gradeID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private Integer gradeid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column studentinftable.studentEmail
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private String studentemail;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column studentinftable.studentTelephone
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private String studenttelephone;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column studentinftable.userID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private Integer userid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column studentinftable.studentID
     *
     * @return the value of studentinftable.studentID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public Integer getStudentid() {
        return studentid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column studentinftable.studentID
     *
     * @param studentid the value for studentinftable.studentID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setStudentid(Integer studentid) {
        this.studentid = studentid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column studentinftable.studentName
     *
     * @return the value of studentinftable.studentName
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public String getStudentname() {
        return studentname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column studentinftable.studentName
     *
     * @param studentname the value for studentinftable.studentName
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setStudentname(String studentname) {
        this.studentname = studentname == null ? null : studentname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column studentinftable.studentSex
     *
     * @return the value of studentinftable.studentSex
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public String getStudentsex() {
        return studentsex;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column studentinftable.studentSex
     *
     * @param studentsex the value for studentinftable.studentSex
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setStudentsex(String studentsex) {
        this.studentsex = studentsex == null ? null : studentsex.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column studentinftable.collegeID
     *
     * @return the value of studentinftable.collegeID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public Integer getCollegeid() {
        return collegeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column studentinftable.collegeID
     *
     * @param collegeid the value for studentinftable.collegeID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setCollegeid(Integer collegeid) {
        this.collegeid = collegeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column studentinftable.gradeID
     *
     * @return the value of studentinftable.gradeID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public Integer getGradeid() {
        return gradeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column studentinftable.gradeID
     *
     * @param gradeid the value for studentinftable.gradeID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setGradeid(Integer gradeid) {
        this.gradeid = gradeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column studentinftable.studentEmail
     *
     * @return the value of studentinftable.studentEmail
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public String getStudentemail() {
        return studentemail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column studentinftable.studentEmail
     *
     * @param studentemail the value for studentinftable.studentEmail
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setStudentemail(String studentemail) {
        this.studentemail = studentemail == null ? null : studentemail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column studentinftable.studentTelephone
     *
     * @return the value of studentinftable.studentTelephone
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public String getStudenttelephone() {
        return studenttelephone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column studentinftable.studentTelephone
     *
     * @param studenttelephone the value for studentinftable.studentTelephone
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setStudenttelephone(String studenttelephone) {
        this.studenttelephone = studenttelephone == null ? null : studenttelephone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column studentinftable.userID
     *
     * @return the value of studentinftable.userID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column studentinftable.userID
     *
     * @param userid the value for studentinftable.userID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}