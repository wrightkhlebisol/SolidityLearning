pragma solidity ^0.4.25;

contract BasicDataTypesContract {
    
    uint8 a = 170;
    
    address public owner;
    
    bool public flag = true;
    
    uint ownerInitialBalance;
    
    function test (address addr) public returns (uint){
        owner.transfer(50);
        
        owner = addr;
        
        ownerInitialBalance = owner.balance;
        
        if(true){
            // Do something
        }
        
        return ownerInitialBalance;
    }
}