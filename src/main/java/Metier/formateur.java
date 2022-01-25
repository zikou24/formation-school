package Metier;

import java.sql.Date;

public class formateur {

	
	
		
	private int id_formateur;
	private String nom ;
	private String prenom ;
	private Date date;

	private String email ;
	private String password;
	private String sex;
	
	private String specialite;
	






	public int getId_formateur() {
		return id_formateur;
	}







	public void setId_formateur(int id_formateur) {
		this.id_formateur = id_formateur;
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







	public String getSex() {
		return sex;
	}







	public void setSex(String sex) {
		this.sex = sex;
	}







	public String getSpecialite() {
		return specialite;
	}







	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}







	@Override
	public String toString() {
		return "apprennant [ id_apprennant=" + id_formateur + ", nom=" + nom + " , prenom=" + prenom +",Email =" + email +",password=" +password+" \"]";
	}

	
}







