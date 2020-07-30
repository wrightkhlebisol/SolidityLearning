pragma solidity ^0.4.0;

contract Modifiers1{
    uint public minBid = 100;
    
    modifier bidGreaterThanMin() {
        if(msg.value > minBid){
            revert();
            _;
        }
    }
    
    function bid () public payable bidGreaterThanMin returns(bool) {
        return true;
    }
}