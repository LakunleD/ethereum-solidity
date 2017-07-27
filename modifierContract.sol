pragma solidity ^0.4.0;

contract HelloWorldContract {
    
    string public word = "Hello World";
    address public issuer;
    
    // Creating a constructor of the contract
    function HelloWorldContract() {
        issuer = msg.sender;
    }
    
    modifier ifIssuer() {
        if (issuer != msg.sender) {
            revert(); // throw an error here
        }
        _; // continue to the underlining code here
    }
    
    function getWord() constant returns(string){
        return word;
    }
    
    function setWord(string newWord) ifIssuer returns(string) {
        
        word = newWord;
        return word;
    }
}
