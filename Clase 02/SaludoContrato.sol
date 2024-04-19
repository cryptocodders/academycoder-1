// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;
 contract SaludoContrato {
    string public saludo;
    string public hola;
    function saludar(string memory nombre) public {
        saludo = string(abi.encodePacked("Hola, ", nombre, "."));
    }
    function obtenerSaludo() public view returns (string memory) {
        return saludo;
    }
 }