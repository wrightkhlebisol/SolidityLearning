pragma solidity ^0.4.25;

contract Test{
    string stringStorage = "Udacity";
    
    // Converts the string to bytes and sends
    // the length of the string
    function convert (string _name) public pure returns (uint _length){
        bytes memory temp = bytes(_name);
        _length = temp.length;
    }
    
    // Retrieves element at an index
    function getElementAt(uint index) view public returns(byte _letter){
        // convert string to bytes
        bytes memory temp = bytes (stringStorage);
        // Get the ASCII for the element at the index
        _letter = temp[index];
    }
}