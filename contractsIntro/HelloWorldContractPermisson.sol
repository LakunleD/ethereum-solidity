pragma solidity ^0.4.0;


contract HelloWorldContract {
    
    string public word = "Hello World";
    address public issuer; // issuer is a solidity type to show address


    // Creating a constructor of the contract
    function HelloWorldContract () {
        issuer = msg.sender; // msg.sender is a reserved keyword for solidity
    }
    
    function getWord () constant returns(string) {
        return word;
    }
    
    function setWord(string newWord) returns(string) {
        // set permission here using a simple if statement
        if (issuer != msg.sender) {
            return "this is not the creator!!";
        }
        
        word = newWord;
        return word;
    }
}
