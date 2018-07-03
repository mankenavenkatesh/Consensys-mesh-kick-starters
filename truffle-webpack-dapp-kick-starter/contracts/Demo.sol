pragma solidity ^0.4.20;

contract Demo {
    address public owner;

    constructor () {
        owner = msg.sender;
    }

    function changeOwner(address _newOwner) public {
         owner = _newOwner;
    }

}