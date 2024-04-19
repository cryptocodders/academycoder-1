// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract pru1 {
    //
    string[25] private personas;
    uint[25] private edad;
    uint public nroPersonas = 0;
    function adiciona(string memory x, uint y) public {
        if (nroPersonas < 25){
            personas[nroPersonas]=x;
            edad[nroPersonas]=y;
            nroPersonas ++;
        }
    }
    function devuelve(uint x) public view returns(string memory, uint) {
        return (personas[x],edad[x]);
    }
    function devuelveNombres() public view returns(string[25] memory, uint[25] memory) {
        return (personas,edad);
    }
    
}