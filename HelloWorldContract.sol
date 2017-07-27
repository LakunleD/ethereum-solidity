pragma solidity ^0.4.0;


contract HelloWorldContract {
    string public word = "Hello World";
    
    // getters makes use of the constant keyword
    function getWord() constant returns(string){
        return word;
    }
    
    // setter do not make use of the constant keyword
    function setWord(string newWord) returns(string) {
        word = newWord;
        return word;
    }
}
