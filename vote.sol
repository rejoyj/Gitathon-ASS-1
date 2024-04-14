// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract UniqueVoting {
    struct Contestant {
        uint identifier;
        string alia;
        uint votesReceived;
    }

    mapping(uint => Contestant) public contestants;
    mapping(address => bool) public voters;
    uint public contestantCount;

    constructor() {
        addContestant("Alice");
        addContestant("Bob");
    }

    function addContestant(string memory _aliaa) public {
        contestantCount++;
        contestants[contestantCount] = Contestant(contestantCount, _aliaa, 0);
    }

    function vote(uint _contestantId) public {
        require(!voters[msg.sender], "You have already voted.");
        require(_contestantId > 0 && _contestantId <= contestantCount, "Invalid contestant ID.");
        
        voters[msg.sender] = true;
        contestants[_contestantId].votesReceived++;
    }
}
