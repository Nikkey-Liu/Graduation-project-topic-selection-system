package com.liu.pojo;

import java.io.Serializable;

public class VoMyClass implements Serializable{
	private static final long serialVersionUID = 1L;
private User user;
private ChooseView chooseView;
public Student getStudent() {
	return student;
}

public void setStudent(Student student) {
	this.student = student;
}

private Student student;
public User getUser() {
	return user;
}

public ChooseView getChooseView() {
	return chooseView;
}

public void setChooseView(ChooseView chooseView) {
	this.chooseView = chooseView;
}

public void setUser(User user) {
	this.user = user;
}

}
