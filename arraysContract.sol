pragma solidity ^0.4.25;

contract ArraysContract {
    
    // Elementary type array in storage
    // Static Array with size 3 of type int256
    int[3] staticInt256Array = [1,2];
    
    // Dynamic array of int8
    int8[] dynamicInt8Array;
    
    // Dynamic array of type bool
    bool[] dynamicBoolArray;
    
    function testArray() public {
        // Allocate memory for 8 elements to the dynamic bool storage array
        dynamicBoolArray = new bool[](8);
        
        dynamicIntArray
    }
}