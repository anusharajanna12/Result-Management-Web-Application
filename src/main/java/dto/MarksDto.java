package dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MarksDto {
	@Id
   private int register_number;
   private String student_name;
   private String father_name;
   private String school_name;
   private String date_of_birth;
   private long phone_number;
   private String gener;
   private int kannada;
   private int english;
   private int hindi;
   private int mathematics;
   private int socialscience;
   private int science;
   private int totalmarks;
   
public int getTotalmarks() {
	return totalmarks;
}
public void setTotalmarks(int totalmarks) {
	this.totalmarks = totalmarks;
}
public String getStudent_name() {
	return student_name;
}
public void setStudent_name(String student_name) {
	this.student_name = student_name;
}
public String getFather_name() {
	return father_name;
}
public void setFather_name(String father_name) {
	this.father_name = father_name;
}
public long getRegister_number() {
	return register_number;
}
public void setRegister_number(int register_number) {
	this.register_number = register_number;
}
public String getSchool_name() {
	return school_name;
}
public void setSchool_name(String school_name) {
	this.school_name = school_name;
}
public String getDate_of_birth() {
	return date_of_birth;
}
public void setDate_of_birth(String date_of_birth) {
	this.date_of_birth = date_of_birth;
}
public long getPhone_number() {
	return phone_number;
}
public void setPhone_number(long phone_number) {
	this.phone_number = phone_number;
}
public String getGener() {
	return gener;
}
public void setGener(String gener) {
	this.gener = gener;
}
public int getKannada() {
	return kannada;
}
public void setKannada(int kannada) {
	this.kannada = kannada;
}
public int getEnglish() {
	return english;
}
public void setEnglish(int english) {
	this.english = english;
}
public int getHindi() {
	return hindi;
}
public void setHindi(int hindi) {
	this.hindi = hindi;
}
public int getMathematics() {
	return mathematics;
}
public void setMathematics(int mathematics) {
	this.mathematics = mathematics;
}
public int getSocialscience() {
	return socialscience;
}
public void setSocialscience(int socialscience) {
	this.socialscience = socialscience;
}
public int getScience() {
	return science;
}
public void setScience(int science) {
	this.science = science;
}
}
