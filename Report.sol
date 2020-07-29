pragma solidity ^0.4.21 < 0.7.0;

contract ReportCard{
    
    string public studentName;
    uint   public studentRollNo;
    uint   public studentBatch;
    string public status;
    uint   public subject1;
    uint   public subject2;
    uint   public subject3;
    uint   public subject4;
    uint result;
    
    constructor(string newName,uint newRollno,uint newBatch,uint marks1,uint marks2,uint marks3,uint marks4) public{
        studentName     = newName;
        studentRollNo   = newRollno;
        studentBatch    = newBatch;
    
        //  Provide marks out off 100 for each subjects
        subject1 = marks1;
        subject2 = marks2;
        subject3 = marks3;
        subject4 = marks4;
       
        result = (subject1 + subject2 + subject3 + subject4);
        
        //  Total Result should be out off 400 
        //  Considering total pass percentage to be 50% of 400
        status = (result < 200)? "Fail" : "Pass";
    }
    
    function getDetails()public view returns(string,uint,uint,string){
       
        return(studentName,studentBatch,studentBatch,status);
    } 
}
