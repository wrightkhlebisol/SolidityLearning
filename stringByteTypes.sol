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
    
    
    // Retrieves the element at specified index
    // Cannot do with strings, hence converting to bytes
    function getElementAt(uint index) view public returns(byte _letter){
        // convert string to bytes
        bytes memory bytesData = bytes (string1);
        // Get the ASCII for the element at the index
        _letter = bytesData[index];
    }
    
    
    // Converts the string to bytes and sends
    // the length of the string
    function convert (string _name) public pure returns (uint _length){
        bytes memory temp = bytes(_name);
        _length = temp.length;
    }
    
}