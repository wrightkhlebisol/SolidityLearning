pragma solidity ^0.4.25;

contract StringBytes{
    
    string stringStorage = "Udacity";
    
    // Static byte arrays, Both declarations will create array with 3 byte elements
    bytes[3] fixedByteArray;
    bytes3 bytes3Array;
    
    // Dynamic bytes arrays
    byte[] dynamicByteArray;
    bytes bytesArray;
    
    // String variable
    string string1 = "testing";
    
    // Converts the bytes type to string type
    function conversionTest() public pure returns (string converted){
        bytes memory string2 = "Udacity";
        converted = string(string2);
    }
    
    
    
    
    
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