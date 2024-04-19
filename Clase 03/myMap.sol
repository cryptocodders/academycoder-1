// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 < 0.9.0;

contract myMapping {


    constructor(){
        myMap[msg.sender] = 1000;
    }

    mapping(address => uint256) public myMap;
    mapping(address => string) public myMapS;

    function get(address _addr) public view returns(uint256){
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }
    function getS(address _addr) public view returns(string memory){
        return myMapS[_addr];
    }

    function setS(address _addr,string memory _i) public {
        myMapS[_addr] = _i;
    }
}