// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract pru9 {
    string public cadena = "prueba";
    uint public numero = 1;
    function modifica1(string memory x) public  {
        cadena = x;
    }
    function modifica2(string memory x) private  {
        cadena = x;
    }
    function modifica3(string memory x) public {
       modifica2(x);
    }
    function obtResult(uint a) public view returns(uint product, uint sum){
      product = a * numero;
      sum = a + numero; 
   }
   function obtResult2(uint a, uint b) public pure returns(uint product, uint sum){
      product = a * b;
      sum = a + b; 
   }
   function deposito() public payable{
    
   }
   function getMon() public view returns(uint)  {
        return address(this).balance;
   }
}

// y esta reo que es otra versión, no estoy seguro Xd

contract pru91 {
    string public cadena = "prueba";
    uint public numero = 1;
    function modifica1(string memory x) public  {
        cadena = x;
    }
    function modifica2(string memory x) private  {
        cadena = x;
    }
    function modifica3(string memory x) public {
       modifica2(x);
    }
    function obtResult(uint a) public view returns(uint product, uint sum){
      product = a * numero;
      sum = a + numero; 
   }
   function obtResult2(uint a, uint b) public pure returns(uint product, uint sum){
      product = a * b;
      sum = a + b; 
   }
   function deposito() public payable{
    
   }
   function getMon() public view returns(uint)  {
        return address(this).balance;
   }
}



