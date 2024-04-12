# Solidity
## Licencia
Hay varios tipos de licencias que se pueden aplicar a un smart contract, dependiendo de los objetivos y las preferencias del desarrollador. Algunos de los tipos comunes de licencias incluyen:
**Licencia de código abierto:** Permite a cualquiera ver, modificar y distribuir el código del smart contract de acuerdo con los términos de la licencia específica, como la Licencia MIT, la Licencia Apache, la Licencia GNU GPL, entre otras.
```
// SPDX-License-Identifier: GPL-3.0
```
## Versión del Compilador
La versión del compilador se refiere al estado específico del compilador en un punto dado en el tiempo. Cada versión del compilador puede tener características, optimizaciones y correcciones de errores únicas.

En el caso de Solidity, se recomienda utilizar siempre la última versión publicada, ya que es la que recibe las correcciones de seguridad. Además, se introducen regularmente cambios importantes y nuevas funciones. 

El número de versión $0.yz$ en Solidity indica el rápido ritmo de cambio y desarrollo del lenguaje. Es importante tener en cuenta la versión del compilador al escribir y compilar contratos inteligentes para asegurarse de que son compatibles y seguros.
Ejemplos: 
```
pragma solidity $>=0.8.2 <0.9.0$;
pragma solidity ^$0.8.24$;
```
## Comentarios
Existen 2 estilos:
- Linea Simple: //
- Linea Multiple: /* … */

>Pueden utilizarse para dejar comentarios utiles para quienes vean el codigo del contrato

## Declaración del Contrato
Se marca con la palabra mágica contract y se rodea de { }
Ejemplo:
```
contract ContratoSimple{
    ...
}
```
## Declaración de Variables
Las variables de Solidity son Tipadas, estas tienen:
1.  Tipo de dato
1.  Visibilidad (opcional)
1.  Nombre

Ejemplo:
```
uint public dato_almacenado;
```
## Tipos de dato
* bool (True/False)
* int / uint (Entero/Entero Positivo)
* address (Direccion de wallet)
* string (Cadena)
* bytes 
> No hay soporte para números decimales

Ejemplos de implementación:
```
Declaración de un booleano:
    bool public esVerdadero = true;

Declaración de un entero y un entero positivo:
    int public entero = -123;
    uint public enteroSinSigno = 123;

Declaración de una dirección:
    address public direccion = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

Declaración de una cadena de texto:
    string public cadena = "Hola, mundo!";

Declaración de bytes:
    bytes public datos = "0x123";
```
## Declaración de Funciones:
Las funciones se declaran con la siguiente sintaxis:
1.   Funcion 
1.   Nombre de la función
1.   Parámetros 
1.   Visibilidad/Accesibilidad
1.   Visor de retorno

Ejemplo:
```
    function nomFuncion(uint x) returns (uint)
    {
            return x ^ 2;
    }
```
## Estructuras de Control
- if/else
- while(){}
- for(){}
> * Los {} se obvian cuando se ejecuta una sola sentencia.
> * Existe la sentencia try/catch pero solo para funciones externas.
```
// Función que utiliza if y else:
    function esPar(uint numero) public pure returns (bool) {
        if (numero % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

// Función que utiliza while:
    function incrementarHasta10() public {
        while (contador < 10) {
            contador++;
        }
    }

// Función que utiliza for:
    function resetearContador() public {
        for (uint i = 0; i < 10; i++) {
            contador--;
        }
    }
```
## Constructor
Función especial que se ejecuta al crear el contrato, pero el mismo estará creado al finalizar la ejecución y no antes.
>* No es obligatorio definir uno.
>* Puede recibir parametros aunque no es obligatorio.
```
    constructor(uint x) public {
        contador = x;
    }
```
## Herramientas
- Remix 
- Truffle / Hardhat / Foundry
- Metamask
- Web3.js / etherjs