package Metier;

import java.sql.Date;

public class appr {

	
	
	

	

	
	private int id_apprennant;
	private String nom ;
	private String prenom ;
	private Date date;

	private String email ;
	private String password;
	private String niveux;
	private String sex;
	

	
	
	

	public int getId_apprennant() {
		return id_apprennant;
	}






	public void setId_apprennant(int id_apprennant) {
		this.id_apprennant = id_apprennant;
	}






	public String getNom() {
		return nom;
	}






	public void setNom(String nom) {
		this.nom = nom;
	}






	public String getPrenom() {
		return prenom;
	}






	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}






	public Date getDate() {
		return date;
	}






	public void setDate(Date date) {
		this.date = date;
	}






	public String getEmail() {
		return email;
	}






	public void setEmail(String email) {
		this.email = email;
	}






	public String getPassword() {
		return password;
	}






	public void setPassword(String password) {
		this.password = password;
	}






	public String getNiveux() {
		return niveux;
	}






	public void setNiveux(String niveux) {
		this.niveux = niveux;
	}






	 






	public String getSex() {
		return sex;
	}






	public void setSex(String sex) {
		this.sex = sex;
	}






	@Override
	public String toString() {
		return "apprennant [ id_apprennant=" + id_apprennant + ", nom=" + nom + " , prenom=" + prenom +",Email =" + email +",password=" +password+" \"]";
	}

	
}







