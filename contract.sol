pragma solidity ^0.4.8;

contract myContract{
    address company;
    address developer;
    string company_address;
    string name_of_project;
    string description;
    uint development_time
    uint cost;

    string developer_name
    string developer_address

    function setLenderDetails(string name,uint value) public
    {
     lname = name;
     lamt = value;
    }

    function setBorrowerDetails(string name,uint value,uint noofemi) public
    {
     bname = name;
        require(value<=lamt);
     bamt = value;
     noe = noofemi;
     emi = bamt/noofemi;
     lamt-=bamt;
     i=1;
    }

    function setLender(address t) public {
        lender =t;
    }

    function setBorrower(address t) public {
        borrower =t;
    }

    function getLender() public constant returns(address){
        return lender;
    }

    function getBorrower() public constant returns(address){
        return borrower;
    }

    function getLenderDetails() public constant returns(string,uint)
    {
     return (lname,lamt);
    }

    function getBorrowerDetails() public constant returns(string,uint,uint)
    {
     return (bname,bamt,noe);
    }

    function transfer() public
    {
        if(i<=noe)
        {
        lamt+=emi;
        bamt-=emi;
        i++;
        }
        else
        revert();
    }

    function () public payable{

    }
}