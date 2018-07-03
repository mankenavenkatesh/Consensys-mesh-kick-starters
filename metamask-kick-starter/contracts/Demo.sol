pragma solidity ^0.4.21;

contract Demo {
    address  public owner;

    constructor () {
        owner = msg.sender;
    }

    function changeOwner(address _newOwner) public {
        require(msg.sender == owner);
        owner = _newOwner;
    }
}