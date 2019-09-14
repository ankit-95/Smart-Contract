pragma solidity ^0.4.8;
contract myContract{
    address supplier_id;
    address retailer_id;
    string pickup_loc;
    string date;
    string time;
    string curr_loc;
    string drop_loc;
    string comm_type;
    uint no_of_units;
    function setSupplier(address t)public{
        supplier_id=t;
    }
    function setRetailer(address t)public{
        retailer_id=t;
    }
    function placeOrder(string pick,string drop,string comm,uint nou,string curr_time,string curr_date) public
    {
        date=curr_date;
        time=curr_time;
        pickup_loc=pick;
        drop_loc=drop;
        comm_type=comm;
        no_of_units=nou;
        curr_loc=pick;
        
    }
    function checkDelievery() public constant returns(string)
    {
        if(keccak256(drop_loc)==keccak256(curr_loc))
        return "Yes";
        else
        return "No";
    }
    function updateOrder(string curr_date,string curr_time,string loc) public
    {
        date=curr_date;
        time=curr_time;
        curr_loc=loc;
    }
    function returnSupplier() public constant returns(address){
        return supplier_id;
    }
    function returnRetailer() public constant returns(address){
        return retailer_id;
    }
    function orderDetails() public constant returns(string,string,string,string,uint){
      return (date,time,curr_loc,comm_type,no_of_units);  
    }
    
    
    function () public payable{
        
    }
    
}