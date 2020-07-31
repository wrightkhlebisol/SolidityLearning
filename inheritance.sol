pragma solidity ^0.4.25;
import "./mainContract.sol";

// We have an interfaceContract that has sa function
// sendmoney...but there is no function body

interface interfaceContract {
    // No function body, only declaring it
    function sendMoney (uint amount, address _address) external returns (bool);
}

// This is a baseContract, that has its constructor, and deposit and withdraw functions

contract baseContract{
    uint public value;
    
    // Anytime base contract has a constructor, we will need to initialise this using
    // the derived contracts constructor function
    constructor (uint amount) public {
        value = amount;
    }
    
    function deposit(uint amount) public {
        value += amount;
    }
    
    function withdraw(uint amount) public {
        value -= amount;
    }
}

contract myContract is baseContract(100), interfaceContract, mainContract(100){
    string public contractName;
    
    constructor (string _n) public {
        contractName = _n;
    }
    
    function getValue() view public returns (uint){
        return value;
    }
    
    // This function has to be implemented has it comes with the interfaceContract
    function sendMoney(uint amount, address _address) public returns(bool){
        _address.transfer(amount);
    }
}