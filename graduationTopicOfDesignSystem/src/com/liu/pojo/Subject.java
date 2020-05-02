package com.liu.pojo;
import java.io.Serializable;
public class Subject implements Serializable{
	private static final long serialVersionUID = 1L;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column subjecttable.subjectID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private Integer subjectid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column subjecttable.subjectName
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private String subjectname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column subjecttable.subContext
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private String subcontext;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column subjecttable.teacherID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private Integer teacherid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column subjecttable.collegeID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    private Integer collegeid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column subjecttable.subjectID
     *
     * @return the value of subjecttable.subjectID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public Integer getSubjectid() {
        return subjectid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column subjecttable.subjectID
     *
     * @param subjectid the value for subjecttable.subjectID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setSubjectid(Integer subjectid) {
        this.subjectid = subjectid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column subjecttable.subjectName
     *
     * @return the value of subjecttable.subjectName
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public String getSubjectname() {
        return subjectname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column subjecttable.subjectName
     *
     * @param subjectname the value for subjecttable.subjectName
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setSubjectname(String subjectname) {
        this.subjectname = subjectname == null ? null : subjectname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column subjecttable.subContext
     *
     * @return the value of subjecttable.subContext
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public String getSubcontext() {
        return subcontext;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column subjecttable.subContext
     *
     * @param subcontext the value for subjecttable.subContext
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setSubcontext(String subcontext) {
        this.subcontext = subcontext == null ? null : subcontext.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column subjecttable.teacherID
     *
     * @return the value of subjecttable.teacherID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public Integer getTeacherid() {
        return teacherid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column subjecttable.teacherID
     *
     * @param teacherid the value for subjecttable.teacherID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setTeacherid(Integer teacherid) {
        this.teacherid = teacherid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column subjecttable.collegeID
     *
     * @return the value of subjecttable.collegeID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public Integer getCollegeid() {
        return collegeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column subjecttable.collegeID
     *
     * @param collegeid the value for subjecttable.collegeID
     *
     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
     */
    public void setCollegeid(Integer collegeid) {
        this.collegeid = collegeid;
    }
}