pragma solidity ^0.5.0;


contract Marble {
  
  //MBLToken public tokenContract = MBLToken(0x3DADd4EC1a4Cfc1D035cD6C65262D06294Fe626b);

  struct Vote {

    uint timeOfVote;
    address voter;
    bool vote;

  }

  	mapping(address => mapping(string => Vote[])) public classes;
  	 

 constructor() public {
 	      
 	      classes[0x3DADd4EC1a4Cfc1D035cD6C65262D06294Fe626b]["lalala"].push(Vote(block.timestamp, 0x3DADd4EC1a4Cfc1D035cD6C65262D06294Fe626b, true));

	}



  //mapping (address => Identity) public people;

  //JP --> (Human --> [Charlie, Charlie's Address, timestamp])
}

/*
contract MBLToken {
  function transfer(address _to, uint256 _value) public;
  function balanceOf(address _tokenOwner) external view returns (uint balance);
   function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
 }*/
