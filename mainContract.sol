pragma solidity ^0.4.25;

contract mainContract {
    uint internal value;
    
    constructor (uint amount) public {
        value = amount;
    }
    
    function deposit(uint amount) public {
        value += amount;
    }
    
    modifier authoriseWithdraw(){
        if(msg.sender != tx.origin){
            revert();
        }else{
            _;
        }
    }
    
    function withdraw(uint amount) public authoriseWithdraw{
        value -= amount;
    }
}