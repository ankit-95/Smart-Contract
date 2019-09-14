pragma solidity ^0.4.10;

contract myContract{
    address company;
    address developer;
    string company_name;
    string company_address;
    string name_of_project;
    string description;
    uint development_time;
    uint projcost;
    uint devacc;
    uint count;
    string developer_name;
    string developer_address;
    uint cmod1;
    uint cmod2;
    uint ccost11;
    uint ccost22;
    uint dmod;
    
    
    function setCompanyDetails(string cname1,string company_address1,string name_of_project1,string description1,uint development_time1,uint cost12,uint id1,uint id2,uint cost1,uint cost2) public
    {
            
             company_name=cname1;
             company_address=company_address1;
             name_of_project=name_of_project1;
             description=description1;
             development_time=development_time1*60;
             projcost=cost12;
             cmod1=id1;
             cmod2=id2;
             ccost11=cost1;
             ccost22=cost2;  
    }

    
    function getTime() public constant returns(uint)
    {
        return development_time;
    }
    function setDevloperDetails(string developer_name1,string developer_address1) public
    {
     developer_name=developer_name1;
     developer_address=developer_address1;
    }

    function setCompany(address t) public {
     company=t;
    }

    function setDevloper(address t) public {
    developer=t;
    }

    function getCompany() public constant returns(address){
        return company;
    }

    function getDeveloper() public constant returns(address){
        return developer;
    }

    function getCompanyDetails() public constant returns(string,string,string,string,uint,uint,uint,uint,uint,uint)
    {
     return (company_name,company_address,name_of_project,description,development_time,projcost,cmod1,cmod2,ccost11,ccost22);
    }

    function getDeveloperDetails() public constant returns(string,string)
    {
     return (developer_name,developer_address);
    }

    function setModule(uint a) public 
    {
        require(a==cmod1 || a==cmod2);
        dmod = a;
    }
    
    function getModule() public constant returns(uint)
    {
        return dmod;
    }
    function () public payable{

    }
    
    function transfer() public
    {
        devacc = projcost;
        projcost=0;
    }
}