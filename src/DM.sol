// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract DMs {
    mapping (address => bool) public isDM;
    mapping (address => bool) public isAdmin;

    event SetDM(address[] newDMs);
    event SetAdmin(address[] newAdmins);

    constructor() payable {
        isAdmin[msg.sender] = true;
    }

    function setDM(address[] calldata newDMs) external {
        for (uint i = 0; i < newDMs.length; i++) {
            isAdmin[newDMs[i]] = true;
        }

        emit SetDM(newDMs);
    }

    function setAdmin(address[] calldata newAdmins) external {
        for (uint i = 0; i < newAdmins.length; i++) {
            isAdmin[newAdmins[i]] = true;
        }

        emit SetDM(newAdmins);
    }
}