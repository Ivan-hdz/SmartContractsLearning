// SPDX-License-Identifier: MIT
pragma solidity >=0.6.4 <0.8.0;
// Nombre del contrato
contract MyFaucet {
    // Función a ejecutar para retirar ether del contrato
    function retirar(uint256 cantidad) public {
        require(cantidad <= (1000000000000000000));
        msg.sender.transfer(cantidad);
    }
    // Función a ejecutar cuando se envia ether a la dirección
    // del contrato
    receive() external payable {}
}
