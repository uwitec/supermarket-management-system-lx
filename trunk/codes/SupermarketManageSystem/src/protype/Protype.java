package protype;
public class Protype{ 
        private String TypeId;		
        private String TypeName;	

       Protype(String TypeId,String TypeName) 
            {
                this.TypeId = TypeId;
                this.TypeName = TypeName;
            }
        public void setTypeId(String newTypeId){
                this.TypeId = newTypeId;
        }
        public String getTypeId(){
                return TypeId;
        }
        public void setTypeName(String newTypeName) {
                this.TypeName = newTypeName;
        }
        public String getTypeName() {
                return TypeName;
        }
        

}
