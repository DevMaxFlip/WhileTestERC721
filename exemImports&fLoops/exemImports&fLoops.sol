// SPDX-License-Identifier: MIT
    pragma solidity ^0.8.20;    

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract whileTest is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private supply;

    uint256 numeroDePecas = 12;

    uint public somaBolo;
    uint farinha=2; //2kg
    uint acucar=1; //1kg

    mapping(address => uint256) public totaldeKilos;
    address[] public Donosbolos;

    constructor() ERC721("Mycollection", "Symbol") {

    }

function bolo() public returns (string memory novoBolo) {
    for (uint256 i = 0; i < numeroDePecas; i++) {
        farinha;
        acucar;
        somaBolo++;
        totaldeKilos[msg.sender]= farinha + acucar;        
    }
Donosbolos.push(msg.sender);
return novoBolo = "mais um bolo pronto";
}

    function mint(address _receiver,uint256 _mintAmount)
        public 
        payable 
    {
        for (uint256 i= 0; i < _mintAmount; i++) {
            supply.increment();
            _safeMint(_receiver, supply.current());
        }
    }
}