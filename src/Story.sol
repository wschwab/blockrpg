// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// this contract should:
//      * allow creation of games containing DM, chars (or something like that)
contract StoryFactory {
    IDMs immutable dms;

    event NewStory(address indexed storyAddr, uint256[] chars, address indexed dm);

    constructor(address addrDM) payable {
        dms = IDMs(addrDM);
    }

    function createStory(uint256[] calldata chars, address dm)  external {
        require(dms.isDM(dm), "only DM");

        address newStory = address(new Story(chars, dm, address(dms)));
        emit NewStory(newStory, chars, dm);
    }
}

// what else needs to be here?
// should we go with a Poster type interface?
contract Story {
    IDMs immutable dms;
    address immutable dm;

    constructor(uint256[] memory chars, address _dm, address _dms) {
        dm = _dm;
        dms = IDMs(_dms);
    }

    function addChar(uint256 newChar) external {
        require(msg.sender == dm || dms.isAdmin(msg.sender), "only DM or admin");
    }

    function removeChar() external {
        require(msg.sender == dm || dms.isAdmin(msg.sender), "only DM or admin");
    }

    // I assume leveling up should be done through here, maybe DM approval or by DM?
}

interface IDMs {
    function isDM(address dm) external returns (bool);
    function isAdmin(address dm) external returns (bool);
}