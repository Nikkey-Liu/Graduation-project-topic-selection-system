package com.liu.pojo;

import java.io.Serializable;

public class ChooseView implements Serializable{
	private static final long serialVersionUID = 1L;
		/**
	     *
	     * This field was generated by MyBatis Generator.
	     * This field corresponds to the database column chooseinftable.studentID
	     *
	     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
	     */
	    private String studentname;

	    /**
	     *
	     * This field was generated by MyBatis Generator.
	     * This field corresponds to the database column chooseinftable.teacherID
	     *
	     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
	     */
	    private String teachername;

	    /**
	     *
	     * This field was generated by MyBatis Generator.
	     * This field corresponds to the database column chooseinftable.subjectID
	     *
	     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
	     */
	    private String subjectname;

	    /**
	     *
	     * This field was generated by MyBatis Generator.
	     * This field corresponds to the database column chooseinftable.isChoose
	     *
	     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
	     */
	    private String ischoose;

	    /**
	     * This method was generated by MyBatis Generator.
	     * This method returns the value of the database column chooseinftable.chooseID
	     *
	     * @return the value of chooseinftable.chooseID
	     *
	     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
	     */
	    /**
	     *
	     * This field was generated by MyBatis Generator.
	     * This field corresponds to the database column chooseinftable.chooseID
	     *
	     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
	     */
	    private Integer chooseid;

	    /**
	     *
	     * This field was generated by MyBatis Generator.
	     * This field corresponds to the database column chooseinftable.collegeID
	     *
	     * @mbg.generated Mon Dec 03 17:27:37 CST 2018
	     */
	    private String collegename;

	    @Override
		public String toString() {
			return "ChooseView [chooseid=" + chooseid + ", collegename=" + collegename + ", studentname=" + studentname
					+ ", teachername=" + teachername + ", subjectname=" + subjectname + ", ischoose=" + ischoose + "]";
		}

		public String getStudentname() {
			return studentname;
		}

		public void setStudentname(String studentname) {
			this.studentname = studentname;
		}

		public String getTeachername() {
			return teachername;
		}

		public void setTeachername(String teachername) {
			this.teachername = teachername;
		}

		public String getSubjectname() {
			return subjectname;
		}

		public void setSubjectname(String subjectname) {
			this.subjectname = subjectname;
		}

		public String getIschoose() {
			return ischoose;
		}

		public void setIschoose(String ischoose) {
			this.ischoose = ischoose;
		}

		public Integer getChooseid() {
			return chooseid;
		}

		public void setChooseid(Integer chooseid) {
			this.chooseid = chooseid;
		}

		public String getCollegename() {
			return collegename;
		}

		public void setCollegename(String collegename) {
			this.collegename = collegename;
		}

		


		

		
	   
}