pragma solidity ^0.4.25;

contract ArraysContract {
    
    // Elementary type array in storage
    // Static Array with size 3 of type int256
    int[3] staticInt256Array = [1,2];
    
    // Dynamic array of int8
    int8[] dynamicInt8Array;
    
    // Dynamic array of type bool
    bool[] dynamicBoolArray;
    
    function testArray() public returns (uint256){
        // Allocate memory for 8 elements to the dynamic bool storage array
        dynamicBoolArray = new bool[](8);
        
        // allocate memory and initialise elements in the int array
        // explicit conversion is needed from uint8 to int8
        dynamicInt8Array = [int8(1), 2, 3];
        
        // works fine since we're inside a function
        uint8[] memory memoryArray; // A dynamic array in memory
        
        // Allocation with assignment not allowed for dynamic memory Arrays
        // memoryArray.push = 3;
        
        uint8[] memory dynamicMemoryArray; // A dynamic memory array
        // Assignment of dynamic NOT allowed
        // dynamicMemoryArray = [uint8(1), 2];
        
        memoryArray = new uint8[](8);
        // memoryArray.push(10);
        // return dynamicInt8Array.length;
        // memoryArray.length = 6;
        
        /** Examples of array inititalization with assignment below */
    }
}