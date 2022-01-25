package Metier;

import java.sql.Date;

public class etab {
	private int id_etab;
	private String nom;
	private String prenom;
	private Date date;
	private String password;
	private String email ;

	public int getId_etab() {
		return id_etab;
	}

	public void setId_etab(int id_etab) {
		this.id_etab = id_etab;
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

	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String Email) {
		email = Email;
	}

	@Override
	public String toString() {
		return "etab[ id_offre=" + id_etab + ", nom=" + nom + ", password=" +password +" \"]";
	}
	

}



