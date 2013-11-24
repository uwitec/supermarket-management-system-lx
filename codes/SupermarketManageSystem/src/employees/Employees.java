package employees;
public class Employees implements Comparable{ 
      private String EmpId;
      private String DepId;
      private String EmpName;                ///////////////////String EmpName;????????????????????????/
      private String Sex;
      private String Nationality;
      private String Birth;
      private String Academic;
      private String Marital;
      private String Original;
      private String Id_Card;
      private String Mobile;
      private String Memo;
      
      

	 Employees(String EmpId,String DepId,String EmpName ,String Sex,
	  String Nationality,String Birth,String Academic,String Marital,
	  String Original,String Id_Card,String Mobile,String Memo){
      	this.EmpId = EmpId;
      	this.DepId = DepId;
      	this.EmpName = EmpName;
      	this.Sex = Sex;
      	this.Nationality = Nationality;
      	this.Birth = Birth;
      	this.Academic = Academic ;
      	this.Marital = Marital;
      	this.Original = Original;
      	this.Id_Card = Id_Card;
      	this.Mobile = Mobile ;
      	this.Memo = Memo;
      	}

////////////////////////////////////////////////////////////////////
      public void setEmpId(String newEmpId){
      	this.EmpId = newEmpId;
      	}
      public String  getEmpId(){
      	return EmpId; 
      	}
      public void setDepId(String newDepId){
      	this.DepId = newDepId;
      	}
      public String getDepId(){
      	return DepId;
      	}
      public void setEmpName(String newEmpName){
      	this.EmpName = newEmpName;
      	}
      public String  getEmpName(){
      	return EmpName; 
      	}
      	
      public void setSex(String newSex){
      	this.Sex = newSex;
      	}
      public String getSex(){
      	return Sex;
      	}
      public void setNationality(String newNationality){
      	this.Nationality = newNationality;
      	}
      public String  getNationality(){
      	return Nationality; 
      	}
      	
      public void setBirth(String newBirth){
      	this.Birth = newBirth;
      	}
      public String getBirth(){
      	return Birth;
      	}
      public void setAcademic(String newAcademic){
      	this.Academic = newAcademic;
      	}
      public String getAcademic(){
      	return Academic;
      	}
      public void setMarital(String newMarital){
      	this.Marital = newMarital;
      	}
      public String getMarital(){
      	return Marital;
      	}
      public void setOriginal(String newOriginal){
      	this.Original = newOriginal;
      	}
      public String getOriginal(){
      	return Original;
      	}
      public void setId_Card(String newId_Card){
      	this.Id_Card = newId_Card;
      	}
      public String getId_Card(){
      	return Id_Card;
      	}
      public void setMobile(String newMobile){
      	this.Mobile = newMobile;
      	}
      public String getMobile(){
      	return Mobile;
      	}
      public void setMemo(String newMemo){
      	this.Memo = newMemo;
      	}
      public String getMemo(){
      	return Memo;
      	}
      	///////////////////String EmpName;????????????????????????/
      public int compareTo(Object o){
      	Employees n = (Employees)o;
      	int lastCmp = EmpName.compareTo(n.EmpName);
      	return(lastCmp);
      	}
	
}	
    


////////////////////////////////////////////////////////////////////
