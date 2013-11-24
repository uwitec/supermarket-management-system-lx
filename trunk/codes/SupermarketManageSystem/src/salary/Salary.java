package salary;

/**
 *员工的工资信息项目
 */ 

public class Salary {
        private String SalaryId;		
        private String  EmpId;	
        private float BasicSalary;	
        private float Item1;      
        private float Item2;
        private float Item3;      
        private float Item4;
        private float Item5;
        private String SalaryTime;		
        
        /**
         * 员工的工资信息
         */
     Salary(String SalaryId,String EmpId,float BasicSalary,float Item1,
     float Item2,float Item3,float Item4,float Item5,String SalaryTime)
       {
       	this.SalaryId = SalaryId;
      	this.EmpId = EmpId;
      	this.BasicSalary = BasicSalary;
      	this.Item1 = Item1;
      	this.Item2= Item2;
      	this.Item3 = Item3 ;
      	this.Item4= Item4;
      	this.Item5 = Item5;
      	this.SalaryTime = SalaryTime;
      	}
        public void setSalaryId(String newSalaryId){
                this.SalaryId = newSalaryId;
        }
        public String getSalaryId(){
                return SalaryId;
        }
         public void setEmpId(String newEmpId){
                this.EmpId = newEmpId;
        }
        public String getEmpId(){
                return EmpId;
        }
        public void setBasicSalary(float newBasicSalary) {
                this.BasicSalary = newBasicSalary;
        }
        public float getBasicSalary() {
                return BasicSalary;
        }       
        public void setItem1(float newItem1) {
                this.Item1 = newItem1;
        }
        public float getItem1() {
                return Item1;
        }
        public void setItem2(float newItem2) {
                this.Item2 = newItem2;
        }
        public float getItem2() {
                return Item2;
        }
        
        public void setItem3(float newItem3) {
                this.Item3 = newItem3;
        }
        public float getItem3() {
                return Item3;
        }
        public void setItem4(float newItem4) {
                this.Item4 = newItem4;
        }
        public float getItem4() {
                return Item4;
        }
        public void setItem5(float newItem5) {
                this.Item5 = newItem5;
        }
        public float getItem5() {
                return Item5;
        }
        public void setSalaryTime(String newSalaryTime) {
                this.SalaryTime = newSalaryTime;
        }
        public String getSalaryTime() {
                return SalaryTime;
        }
}
