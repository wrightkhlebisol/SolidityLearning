pragma solidity ^0.4.25;

contract TypesConversionContract {
    
    uint8 a = 255;
    
    uint ownerInitialBalance;
    
    function conversion () public returns (int[]){
        
        int b;
        
        b = a;
        
        a = uint8(b);
        
        a = uint8(b);
        
        uint[] memory arrayName = [1,2];
        
        uint8[3] memory allNames = [uint8(-1),2,3];
        // allNames = new storage int[](2);
        // allNames.push(4);
        // allNames = [int(1)];
        // int8[] anArray;
        // anArray = [1];
        // = new int8[](9);
        // return allNames;
        uint8 m = allNames[1];
        
        // if(true){
        //     // Do something
        //     // b = a;
        //     // int x = allNames[3];
        //     // x = int(allNames.length);
        //     // return x;
        //     // int[3] arr = [2,3];
        // }
        
    }
    
}