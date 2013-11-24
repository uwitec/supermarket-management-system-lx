package departments;

/**
 * 部门类
   */

public class Departments {
        private String DepId;		//部门的编号
        private String DepName;	//部门的名称
        
        /**
         * 部门的初始化
         */
      Departments(String DepId,String DepName)
          {
                this.DepId =DepId;
                this.DepName = DepName;       
          }
        public void setDepId(String newId){
                this.DepId = newId;
        }
        public String getDepId(){
                return DepId;
        }
        public void setDepName(String newDepName) {
                this.DepName = newDepName;
        }
        public String getDepName() {
                return DepName;
        }
  
}
