// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

contract TiempoYGas {
    // Variable de almacenamiento: Permanece en la cadena de bloques
    uint256 public datosPermanentes;

    // Función para actualizar los datos permanentes
    function actualizarDatosPermanentes(uint256 _nuevoDato) public {
        datosPermanentes = _nuevoDato;
    }


    // Función que utiliza la memoria para almacenar datos temporalmente
    function almacenarTemp(uint256 _tempData) public pure returns (uint256) {
        // Variable local que utiliza la memoria
        uint256 temp;
        temp = _tempData * 2; // Realiza alguna operación temporal
        return temp; // Devuelve el resultado temporal
    }
}
