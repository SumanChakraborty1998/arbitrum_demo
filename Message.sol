// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract message {
    bytes public message = "Hello World";
    address public owner;
    uint256 public updateCount;

    constructor(){
        owner = msg.sender;
        updateCount ++;
    }

    function updateMessage(string memory _message) public {
        if(msg.sender == owner){
            message = bytes(_message);
            updateCount ++;
        }
    }


    function getOriginalMessage() public view returns(string memory){
        return string(abi.encodePacked(message));
    }

}