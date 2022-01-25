package Metier;

import java.sql.Connection;





import java.sql.Date;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Metier.ConnexionBase;

import Metier.User;

public class userOperation {

	private static ConnexionBase con;
	private static Connection Connect;

	public userOperation() {
		con = new ConnexionBase();
		Connect = con.getConnection();
	}
	

	public boolean authentify(User x) {
		String query = "select * from login where username = ? and password = ?";
		PreparedStatement st = null;
		ResultSet r = null;
		boolean b=false;
		try {
			st = this.Connect.prepareStatement(query);
			st.setString(1, x.getUsername());
			st.setString(2, x.getPassword());

			r = st.executeQuery();
			if (r.next())
				b = true;
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	
	
	
	
	

//loginaetab
	
	
	
	public boolean authentifyetab(etab y) {
		String query = "select id_etab from etab where nom = ? and password= ?";
		PreparedStatement st = null;
		ResultSet r = null;
		boolean b=false;
		try {
			st = this.Connect.prepareStatement(query);
			st.setString(1, y.getNom());
			st.setString(2, y.getPassword());
			r = st.executeQuery();
			if (r.next())
				b = true;
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	
	
	
//loginappr
	

	public boolean authentifyappr(appr s) {
		String query = "select id_apprennant from appr where nom = ? and password= ?";
		PreparedStatement st = null;
		ResultSet r = null;
		boolean b=false;
		try {
			st = this.Connect.prepareStatement(query);
			st.setString(1, s.getNom());
			st.setString(2, s.getPassword());
			r = st.executeQuery();
			if (r.next())
				b = true;
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	
	
	
	
	
	
//login formateur
	
	
	public boolean authentifyformateur(formateur n) {
		String query = "select id_formateur from formateur where nom = ? and password= ?";
		PreparedStatement st = null;
		ResultSet r = null;
		boolean b=false;
		try {
			st = this.Connect.prepareStatement(query);
			st.setString(1, n.getNom());
			st.setString(2, n.getPassword());
			r = st.executeQuery();
			if (r.next())
				b = true;
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	
		
	
	//formateur getid
	
	
	
	
	
	public int getidformateur(String z, String v) {
		int b=0;
		String query = "select id_formateur from formateur where nom = '"+z+"' and password= '"+v+"'";
		PreparedStatement st = null;
		ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			if (r.next())
				b=r.getInt("id_formateur");
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}

	

	
	
	
	//appr getid
	public int getid(String x, String y) {
		int a=0;
		String query = "select id_apprennant from appr where nom = '"+x+"' and password= '"+y+"'";
		PreparedStatement st = null;
		ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			if (r.next())
				a=r.getInt("id_apprennant");
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}

//getidetab
	
	public int getidetab(String x, String y) {
		int a=0;
		String query = "select id_etab from etab where nom = '"+x+"' and password= '"+y+"'";
		PreparedStatement st = null;
		ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			if (r.next())
				a=r.getInt("id_etab");
			st.close();
			r.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}

	
	
	
//addappr
public boolean addappr(appr x) {
	String query = "insert into appr(nom,prenom,date,password,email,niveux,sex) values (?,?,?,?,?,?,?)";
	PreparedStatement st = null;
	int r = 0;
	boolean b= false;
	try {
		st = this.Connect.prepareStatement(query);
		st.setString(1, x.getNom());
		st.setString(2, x.getPrenom());
		st.setDate(3, x.getDate());
		st.setString(4, x.getPassword());
		st.setString(5, x.getEmail());
		st.setString(6, x.getNiveux());
		st.setString(7, x.getSex());

		

		r = st.executeUpdate();
		st.close();
		b=true;
	} catch (Exception e) {e.printStackTrace();}
		return b;
}



	//addformateur





public boolean addformateur(formateur x) {

String query = "insert into formateur(nom,prenom,date,email,password,sex,specialite) values (?,?,?,?,?,?,?)";
PreparedStatement st = null;
int r = 0;
boolean b= false;
try {
	st = this.Connect.prepareStatement(query);
	st.setString(1, x.getNom());
	st.setString(2, x.getPrenom());
	st.setDate(3, x.getDate());
	st.setString(4, x.getEmail());
	st.setString(5, x.getPassword());
	st.setString(6, x.getSex());
	st.setString(7, x.getSpecialite());

	

	r = st.executeUpdate();
	st.close();
	b=true;
} catch (Exception e) {e.printStackTrace();}
	return b;
}
// modifier formateur








public boolean Modformateur(formateur x) {
	boolean a = false;
	String query = "update formateur set id_formateur=? , nom = ? , prenom = ? , date = ?  ,email=?, password = ?,sex=? ,specialite=?  where id_formateur="+x.getId_formateur();
	PreparedStatement st = null;
	int r = 0;
	try {
		st = this.Connect.prepareStatement(query);
		st.setInt(1, x.getId_formateur());
		st.setString(2, x.getNom());
		st.setString(3, x.getPrenom());
		st.setDate(4, x.getDate());
		st.setString(5, x.getEmail());
		st.setString(6, x.getPassword());
		
		st.setString(7, x.getSex());
		st.setString(8, x.getSpecialite());
		
		
		
		
		r = st.executeUpdate();
		st.close();
		a=true;
	} catch (Exception e) {e.printStackTrace();}
		return a;
	
}








//list formateur



public List<formateur> list_fomateur() {

	List<formateur> list = new ArrayList<formateur>();
	String query = "select id_formateur,nom,prenom,date,email,password,sex,specialite from formateur";
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				formateur x = new formateur();
				x.setId_formateur(r.getInt("id_formateur"));
				x.setNom(r.getString("nom"));
				x.setPrenom(r.getString("prenom"));
				x.setDate(r.getDate("date"));
				x.setEmail(r.getString("email"));
				x.setPassword(r.getString("password"));
				x.setSex(r.getString("sex"));
				x.setSpecialite(r.getString("specialite"));
				
				list.add(x);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		}


//listetab



public List<etab> list_etab() {

	List<etab> list3 = new ArrayList<etab>();
	String query = "select id_etab,nom,prenom,date,password,email from etab";
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				etab x = new etab();
				x.setId_etab(r.getInt("id_etab"));
				x.setNom(r.getString("nom"));
				x.setPrenom(r.getString("prenom"));
				x.setDate(r.getDate("date"));
				x.setPassword(r.getString("password"));
				x.setEmail(r.getString("email"));
			
				
				list3.add(x);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list3;
		}


//supprimmer etab
public boolean Supprimeretab(int id_etab) {

	boolean a = false;
	String query = "delete from etab where id_etab="+id_etab;
	PreparedStatement st = null;
	int r =0;
	try {
		st = this.Connect.prepareStatement(query);
		r = st.executeUpdate();
		st.close();
		a=true;
	} catch (Exception e) {e.printStackTrace();}
		return a;
}





	
	//get id formateur
public formateur get_formateur(int id_formateur) {
	formateur list = new formateur();
	String query = "select id_formateur,nom,prenom,date,email,password,sex,specialite from formateur where id_formateur ="+id_formateur;
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				formateur x = new formateur();
				x.setId_formateur(r.getInt("id_formateur"));
				x.setNom(r.getString("nom"));
				x.setPrenom(r.getString("prenom"));
				x.setDate(r.getDate("date"));
				x.setEmail(r.getString("email"));

				x.setPassword(r.getString("password"));
				x.setSex(r.getString("sex"));

				x.setSpecialite(r.getString("specialite"));
				list=x;
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		}
	//get etab

public etab get_etab(int id_etab) {
etab list = new etab();
String query = "select id_etab,nom,prenom,date,email,password from etab where id_etab ="+id_etab;
PreparedStatement st = null;
ResultSet r = null;
	try {
		st = this.Connect.prepareStatement(query);
		r = st.executeQuery();
		while(r.next()) {
			etab x = new etab();
			x.setId_etab(r.getInt("id_etab"));
			x.setNom(r.getString("nom"));
			x.setPrenom(r.getString("prenom"));
			x.setDate(r.getDate("date"));
			x.setEmail(r.getString("email"));

			x.setPassword(r.getString("password"));
			
			list=x;
		}
		st.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
	}





//suprimmerappre
public boolean Supprimerformateur(int id_formateur) {

		boolean a = false;
		String query = "delete from formateur where id_formateur="+id_formateur;
		PreparedStatement st = null;
		int r =0;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeUpdate();
			st.close();
			a=true;
		} catch (Exception e) {e.printStackTrace();}
			return a;
	}



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

//list offre
 public List<offress> list_Offres() {

	List<offress> list = new ArrayList<offress>();
	String query = "select id_offre,title,salaire,domaine_offre,periode from offre";
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				offress x = new offress();
				x.setid_offre(r.getInt("id_offre"));
				x.settitle(r.getString("title"));
				x.setsalaire(r.getFloat("salaire"));
				x.setdomaine_offre(r.getString("domaine_offre"));
				x.setperiode(r.getString("periode"));
				list.add(x);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		}

 
 //consulter liste formateur
 public List<offress> list_Offresfor() {

		List<offress> list = new ArrayList<offress>();
		String query = "select id_offre,title,salaire,domaine_offre,periode from offre";
		PreparedStatement st = null;
		ResultSet r = null;
			try {
				st = this.Connect.prepareStatement(query);
				r = st.executeQuery();
				while(r.next()) {
					offress x = new offress();
					x.setid_offre(r.getInt("id_offre"));
					x.settitle(r.getString("title"));
					x.setsalaire(r.getFloat("salaire"));
					x.setdomaine_offre(r.getString("domaine_offre"));
					x.setperiode(r.getString("periode"));
					list.add(x);
				}
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
			}



//listeapprenant
 
 

 public List<appr> list_apprenant() {

	List<appr> list1 = new ArrayList<appr>();
	String query = "select id_apprennant,nom,prenom,date,password,email,niveux,sex from appr";
	PreparedStatement st = null;
	ResultSet a = null;
		try {
			st = this.Connect.prepareStatement(query);
			a = st.executeQuery();
			while(a.next()) {
				appr z = new appr();
				z.setId_apprennant(a.getInt("id_apprennant"));
				z.setNom(a.getString("nom"));
				z.setPrenom(a.getString("prenom"));
				z.setDate(a.getDate("date"));
				z.setPassword(a.getString("password"));
				z.setEmail(a.getString("email"));
				z.setNiveux(a.getString("niveux"));
				z.setSex(a.getString("sex"));

				list1.add(z);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list1;
		}
 
 
 
//get_appr


public appr get_Appr(int id_apprennant) {
	appr list1 = new appr();
	String query = "select id_apprennant,nom,prenom,date,password,email,niveux,sex from appr where id_apprennant ="+id_apprennant;
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				appr x = new appr();
				x.setId_apprennant(r.getInt("id_apprennant"));
				x.setNom(r.getString("nom"));
				x.setPrenom(r.getString("prenom"));
				x.setDate(r.getDate("date"));
				x.setPassword(r.getString("password"));
				x.setEmail(r.getString("email"));
				x.setNiveux(r.getString("niveux"));
				x.setSex(r.getString("sex"));
				list1=x;
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list1;
		}


// get emailapprennat;



public String getidemail(int id_apprennant) {
	String a=null;
	String query = "select email from appr where id_apprennant = '"+id_apprennant+"'";
	PreparedStatement st = null;
	ResultSet r = null;
	try {
		st = this.Connect.prepareStatement(query);
		r = st.executeQuery();
		if (r.next())
			a=r.getString("email");
		st.close();
		r.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return a;
}

//get email formation



//get email formateur




public String getidemailform(int id_formateur) {
	String a=null;
	String query = "select email from formateur where id_formateur = '"+id_formateur+"'";
	PreparedStatement st = null;
	ResultSet r = null;
	try {
		st = this.Connect.prepareStatement(query);
		r = st.executeQuery();
		if (r.next())
			a=r.getString("email");
		st.close();
		r.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return a;
}


//modiferapprennant





public boolean ModAppr(appr x) {
	boolean a = false;
	String query = "update appr set id_apprennant=? , nom = ? , prenom = ? , date = ? , password = ? ,email=?, niveux=?,sex=?  where id_apprennant="+x.getId_apprennant();
	PreparedStatement st = null;
	int r = 0;
	try {
		st = this.Connect.prepareStatement(query);
		st.setInt(1, x.getId_apprennant());
		st.setString(2, x.getNom());
		st.setString(3, x.getPrenom());
		st.setDate(4, x.getDate());
		st.setString(5, x.getPassword());
		st.setString(6, x.getEmail());
		st.setString(7, x.getNiveux());
		st.setString(8, x.getSex());
		
		
		
		
		r = st.executeUpdate();
		st.close();
		a=true;
	} catch (Exception e) {e.printStackTrace();}
		return a;
	
}

//modifer etab

public boolean Modetab(etab x) {
	boolean a = false;
	String query = "update etab set id_etab=? , nom = ? , prenom = ? , date = ? , password = ? ,email=?  where id_etab="+x.getId_etab();
	PreparedStatement st = null;
	int r = 0;
	try {
		st = this.Connect.prepareStatement(query);
		st.setInt(1, x.getId_etab());
		st.setString(2, x.getNom());
		st.setString(3, x.getPrenom());
		st.setDate(4, x.getDate());
		st.setString(5, x.getPassword());
		st.setString(6, x.getEmail());
		
		
		

		r = st.executeUpdate();
		st.close();
		a=true;
	} catch (Exception e) {e.printStackTrace();}
		return a;
	
}


 
 
 
 /*public offress get_apprennant(int id_apprennant) {
		offress list = new offress();
		String query = "select id_apprennant_,nom,prenom,date,password,email,niveux,sex from appr where id_apprennant ="+id_apprennant;
		PreparedStatement st = null;
		ResultSet r = null;
			try {
				st = this.Connect.prepareStatement(query);
				r = st.executeQuery();
				while(r.next()) {
					offress x = new offress();
					x.setid_offre(r.getInt("id_offre"));
					x.settitle(r.getString("title"));
					x.setsalaire(r.getFloat("salaire"));
					x.setdomaine_offre(r.getString("domaine_offre"));
					x.setperiode(r.getString("periode"));
					list=x;
				}
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
			}*/



//suprimmerappre
 public boolean Supprimerappr(int id_apprennant) {

		boolean a = false;
		String query = "delete from appr where id_apprennant="+id_apprennant;
		PreparedStatement st = null;
		int r =0;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeUpdate();
			st.close();
			a=true;
		} catch (Exception e) {e.printStackTrace();}
			return a;
	}

  
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

//
//---------offre -------------------------------------------------
public boolean addOffre(offress x) {
	String query = "insert into offre(title,salaire,domaine_offre,periode) values (?, ?, ?, ?)";
	PreparedStatement st = null;
	int r = 0;
	boolean b= false;
	try {
		st = this.Connect.prepareStatement(query);
		st.setString(1, x.gettitle());
		st.setFloat(2, x.getsalaire());
		st.setString(3, x.getdomaine_offre());
		st.setString(4, x.getperiode());
		r = st.executeUpdate();
		st.close();
		b=true;
	} catch (Exception e) {e.printStackTrace();}
		return b;
}
//add formation

public boolean addformation(formation x) {
	String query = "insert into formation(nom,domaine,niveux_formation,niveux_etude) values (?, ?, ?, ?)";
	PreparedStatement st = null;
	int r = 0;
	boolean b= false;
	try {
		st = this.Connect.prepareStatement(query);
		st.setString(1, x.getNom());
		st.setString(2, x.getDomaine());
		st.setString(3, x.getNiveux_formation());
		st.setString(4, x.getNiveux_etude());
		r = st.executeUpdate();
		st.close();
		b=true;
	} catch (Exception e) {e.printStackTrace();}
		return b;
}
//modifier offre






//modifier offre


public boolean ModOffre(offress x) {
	boolean a = false;
	String query = "update offre set id_offre=? , title = ? , salaire = ? , domaine_offre = ? , periode = ? where id_offre="+x.getid_offre();
	PreparedStatement st = null;
	int r = 0;
	try {
		st = this.Connect.prepareStatement(query);
		st.setInt(1, x.getid_offre());
		st.setString(2, x.gettitle());
		st.setFloat(3, x.getsalaire());
		st.setString(4, x.getdomaine_offre());
		st.setString(5, x.getperiode());
		r = st.executeUpdate();
		st.close();
		a=true;
	} catch (Exception e) {e.printStackTrace();}
		return a;
}


//supprimer offre
public boolean SupprimerOffre(int id_offre) {

	boolean a = false;
	String query = "delete from offre where id_offre="+id_offre;
	PreparedStatement st = null;
	int r =0;
	try {
		st = this.Connect.prepareStatement(query);
		r = st.executeUpdate();
		st.close();
		a=true;
	} catch (Exception e) {e.printStackTrace();}
		return a;
}

//Supprimerformation


public boolean Supprimerformation(int id_formation) {

	boolean a = false;
	String query = "delete from formation where id_formation="+id_formation;
	PreparedStatement st = null;
	int r =0;
	try {
		st = this.Connect.prepareStatement(query);
		r = st.executeUpdate();
		st.close();
		a=true;
	} catch (Exception e) {e.printStackTrace();}
		return a;
}





public offress get_Offre(int id_offre) {
	offress list = new offress();
	String query = "select id_offre,title,salaire,domaine_offre,periode from offre where id_offre ="+id_offre;
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				offress x = new offress();
				x.setid_offre(r.getInt("id_offre"));
				x.settitle(r.getString("title"));
				x.setsalaire(r.getFloat("salaire"));
				x.setdomaine_offre(r.getString("domaine_offre"));
				x.setperiode(r.getString("periode"));
				list=x;
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		}






public boolean addetab(etab x) {
	String query = "insert into etab(nom,prenom,date,password,email) values (?,?,?,?,?)";
	PreparedStatement st = null;
	int r = 0;
	boolean b= false;
	try {
		st = this.Connect.prepareStatement(query);
		st.setString(1, x.getNom());
		st.setString(2, x.getPrenom());
		st.setDate(3, x.getDate());
		st.setString(4, x.getPassword());
		st.setString(5, x.getEmail());

		r = st.executeUpdate();
		st.close();
		b=true;
	} catch (Exception e) {e.printStackTrace();}
		return b;
}




//list formation


public List<formation> list_formation() {

	List<formation> list = new ArrayList<formation>();
	String query = "select id_formation,nom,domaine,niveux_formation,niveux_formation,niveux_etude from formation";
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				formation x = new formation();
				x.setId_formation(r.getInt("id_formation"));
				x.setNom(r.getString("nom"));
				x.setDomaine(r.getString("domaine"));
				x.setNiveux_formation(r.getString("niveux_formation"));
				
				x.setNiveux_etude(r.getString("niveux_etude"));
			
				list.add(x);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		}




//demande




public boolean AddDemande(demande x) {

	String query = "insert into demande(id_formateur,id_offre) values (?, ?)";
	PreparedStatement st = null;
	int r = 0;
	boolean b= false;
	try {
		st = this.Connect.prepareStatement(query);
		st.setInt(1, x.getId_formateur());

		st.setInt(2, x.getId_offre());
		r = st.executeUpdate();
		st.close();
		b=true;
	} catch (Exception e) {e.printStackTrace();}
		return b;
}


//



//get demande 


public demande get_Demande(int id_formateur,int id_offre) {
	demande list = new demande();
	String query = "select id_formateur,id_offre,accepte from demande where id_formateur ="+id_formateur+" and id_offre = "+id_offre;
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				demande x = new demande();
				x.setId_formateur(r.getInt("id_formateur"));
				x.setId_offre(r.getInt("id_offre"));
				x.setAccepte(r.getInt("accepte"));
				list=x;
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		}



//list offre disponible 







public List<offress> list_Offre_disponible(int id_formateur) {

	List<offress> list = new ArrayList<offress>();
	String query = "select id_offre,title,salaire,domaine_offre,periode from offre,formateur where offre.domaine_offre=formateur.specialite and id_offre not in (select id_offre from demande where id_formateur="+id_formateur+")";
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				offress x = new offress();
				x.setid_offre(r.getInt("id_offre"));
				x.settitle(r.getString("title"));
				x.setsalaire(r.getFloat("salaire"));
				x.setdomaine_offre(r.getString("domaine_offre"));
				x.setperiode(r.getString("periode"));
				list.add(x);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		}



//liste demande


public List<formateur> list_Demande(int id_offre) {

	List<formateur> list = new ArrayList<formateur>();
	String query = "select id_formateur,nom,prenom from formateur join demande using(id_formateur) where id_offre="+id_offre;
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				formateur x = new formateur();
				x.setId_formateur(r.getInt("id_formateur"));
				x.setNom(r.getString("nom"));
				x.setPrenom(r.getString("prenom"));
				list.add(x);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

}

//list_Demande_formation



public List<appr> list_Demande_formation(int id_formation) {

	List<appr> list = new ArrayList<appr>();
	String query = "select id_apprennant,nom,prenom,email from appr join demande_formation using(id_apprennant) where id_formation="+id_formation;
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				appr x = new appr();
				x.setId_apprennant(r.getInt("id_apprennant"));
				x.setNom(r.getString("nom"));
				x.setPrenom(r.getString("prenom"));
				x.setEmail(r.getString("email"));
				list.add(x);
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

}





public boolean SupprimerDemandeDeformateur(int id_formateur, int id_offre) {

	boolean a = false;
	String query = "delete from demande where id_formateur="+id_formateur+" and id_offre="+id_offre;
	PreparedStatement st = null;
	int r = 0;
	try {
		st = this.Connect.prepareStatement(query);
		r = st.executeUpdate();
		st.close();
		a=true;
	} catch (Exception e) {e.printStackTrace();}
		return a;
}


//



public boolean SupprimerDemandeDeformation(int id_apprennant, int id_formation) {

	boolean a = false;
	String query = "delete from demande_formation where id_apprennant="+id_apprennant+" and id_formation="+id_formation;
	PreparedStatement st = null;
	int r = 0;
	try {
		st = this.Connect.prepareStatement(query);
		r = st.executeUpdate();
		st.close();
		a=true;
	} catch (Exception e) {e.printStackTrace();}
		return a;
}





//add demande formation
public boolean AddDemande_formation(demande_formation x) {

	String query = "insert into demande_formation(id_apprennant,id_formation) values (?, ?)";
	PreparedStatement st = null;
	int r = 0;
	boolean b= false;
	try {
		st = this.Connect.prepareStatement(query);
		st.setInt(1, x.getId_apprennant());

		st.setInt(2, x.getId_formation());
		r = st.executeUpdate();
		st.close();
		b=true;
	} catch (Exception e) {e.printStackTrace();}
		return b;
}




public demande_formation get_Demandes(int id_apprennant,int id_formation) {
	demande_formation list = new demande_formation();
	String query = "select id_apprennant,id_formation,accepte from demande_formation where id_apprennant ="+id_apprennant+" and id_formation = "+id_formation;
	PreparedStatement st = null;
	ResultSet r = null;
		try {
			st = this.Connect.prepareStatement(query);
			r = st.executeQuery();
			while(r.next()) {
				demande_formation x = new demande_formation();
				x.setId_apprennant(r.getInt("id_apprennant"));
				x.setId_formation(r.getInt("id_formation"));
				x.setAccepte(r.getInt("accepte"));
				list=x;
			}
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		}

}









