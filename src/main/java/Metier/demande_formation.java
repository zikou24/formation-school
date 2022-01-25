package Metier;

public class demande_formation {
	private int id_apprennant;
	private int  id_formation;
	private int accepte;
	public int getId_apprennant() {
		return id_apprennant;
	}
	public void setId_apprennant(int id_apprennant) {
		this.id_apprennant = id_apprennant;
	}
	public int getId_formation() {
		return id_formation;
	}
	public void setId_formation(int id_formation) {
		this.id_formation = id_formation;
	}
	public int getAccepte() {
		return accepte;
	}
	public void setAccepte(int accepte) {
		this.accepte = accepte;
	}
	
}
