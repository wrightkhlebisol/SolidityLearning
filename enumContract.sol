pragma solidity ^0.4.4;

contract EnumContract {
    enum names {Joe, Brandy, Rachna, Jessica}
    
    function getNames(uint8 arg, names) public pure returns (string) {
        if(arg == uint8(names.Joe)) return "Joe";
        if(arg == uint8(names.Brandy)) return "Brandy";
        if(arg == uint8(names.Rachna)) return "Rachna";
        if(arg == uint8(names.Jessica)) return "Jessica";
        arg = uint8(names.Jessica);
    }
}