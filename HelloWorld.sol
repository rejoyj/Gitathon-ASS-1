// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract UniqueDataTypes {
    int256 public weather = 20;
    uint256 public amount;
    string public message;
    uint256 public year = 30;

    struct Person {
        bool isEligible;
        string fullName;
        uint256 age;
    }

    enum Choice {
        Option1,
        Option2,
        Option3
    }
    Choice public selectedChoice;

    Person public user;

    constructor() {
        amount = 1000;
        message = "Hello, Ethereum World!";
        selectedChoice = Choice.Option3;
        user.fullName = "Bob";
        user.age = 35;
        user.isEligible = false;
    }

    function performOperations(uint256 x, uint256 y)
        public
        pure
        returns (uint256[5] memory)
    {
        uint256[5] memory results;
        results[0] = x + y;
        results[1] = x - y;
        results[2] = x * y;
        results[3] = x / y;
        results[4] = x % y;
        return results;
    }

    function concatenateStrings(string memory a, string memory b)
        public
        pure
        returns (string memory)
    {
        return string(abi.encodePacked(a, b));
    }
}
