pragma solidity ^0.5.0;


//Limits on people you can support: initial quota of 30, additional monthly quota of 5
//Category proposal process
//MBL Transfers

contract Marble {
  
  //MBLToken public tokenContract = MBLToken(0x3DADd4EC1a4Cfc1D035cD6C65262D06294Fe626b);

 struct Person {

 	mapping(string => mapping(address => Vote)) classes;
 	uint peopleSupported;
 	uint votesCast;

 }

  struct Vote {

    uint time;
    uint8 vote;

  }

  mapping(address => Person) private marble;
  // mapping(string => mapping(address => Vote)) classes;

  address[] private people;
  string[] private classes;

 constructor() public {


	marble[0x3DADd4EC1a4Cfc1D035cD6C65262D06294Fe626b] = Person(0,0);
	marble[0x3DADd4EC1a4Cfc1D035cD6C65262D06294Fe626b].classes["lalala"][0x3DADd4EC1a4Cfc1D035cD6C65262D06294Fe626b] = Vote(block.timestamp, 1);

	}

	function getSupporterTime(address person, string memory class, address voter) view public returns (uint)   {
		return marble[person][class][voter].time;
	}

	function getSupporterVote(address person, string memory class, address voter) view public returns (uint8)   {
		return marble[person][class][voter].vote;
	}

	function getPeopleByIndex(uint index) view public returns (address) {
		return people[index];
	}
	
	function getCategoriesByIndex(uint index) view public returns (string memory) {
		return classes[index];
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
