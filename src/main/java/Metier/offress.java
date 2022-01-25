package Metier;

public class offress {

	

	
	private int id_offre;
	private String title ;
	private float salaire;
	private String domaine_offre;
	
	private String periode;



	public int getid_offre() {
		return id_offre;
	}

	public void setid_offre(int id_offre) {
		this.id_offre = id_offre;
	}

	public String gettitle() {
		return title;
	}

	public void settitle(String title) {
		this.title = title;
	}
	
	public float getsalaire() {
		return salaire;
	}

	public void setsalaire(float salaire) {
		this.salaire = salaire;
	}
	
	public String getdomaine_offre() {
		return domaine_offre;
	}

	public void setdomaine_offre(String domaine_offre) {
		this.domaine_offre = domaine_offre;
	}
	

	public String getperiode() {
		return periode;
	}

	public void setperiode(String periode) {
		this.periode = periode;
	}	

	

	@Override
	public String toString() {
		return "offress [ id_offre=" + id_offre + ", title=" + title + " , salaire=" + salaire +",domaine_offre =" + domaine_offre +",periode=" +periode+" \"]";
	}

}




