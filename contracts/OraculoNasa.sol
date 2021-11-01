// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract OraculoNasa{

    //https://api.nasa.gov/neo/rest/v1/feed?start_date=START_DATE&end_date=END_DATE&api_key=API_KEY
    
    address owner;
    uint public numberAsteroids;
    event __callbackNewData();
    
    constructor(){
        owner = msg.sender;
    }
    
    modifier onlyOwner(){
        require(msg.sender == owner, 'Only owner');
        _;
    }
    
    function update() public onlyOwner{
        emit __callbackNewData();
    }
    
    function setNumberAsteroids(uint _num) public onlyOwner{
        numberAsteroids = _num;
    }
    
}