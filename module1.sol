// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AdultContentAccess {
    mapping(address => bool) private hasAccess;
    mapping(address => uint) private accessTimes;

    uint public minAge = 21; // Minimum age requirement for access to adult content

    function watchAdultContent(uint _age) external {
        require(ageEligibilityCheck(_age), "Not eligible to access adult content");

        // Check if the person has already accessed
        assert(!hasAccess[msg.sender]);

        accessTimes[msg.sender] += 1;
        hasAccess[msg.sender] = true;

        assert(accessTimes[msg.sender] > 0);
    }

    function ageEligibilityCheck(uint _age) public pure returns (bool) {
        if (_age < 21) {
            revert("Not eligible to access adult content");
        }
        return true;
    }

    function accessStatusCheck() external view returns (bool) {
        require(hasAccess[msg.sender], "You don't have access to watch adult content");
        return true;
    }
}

