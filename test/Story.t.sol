// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Char, CharData } from "../src/Char.sol";
import {DMs} from "../src/DM.sol";
import {StoryFactory, Story} from "../src/Story.sol";

contract CharTest is Test {
    Char public char;
    DMs public dms;
    StoryFactory public factory;

    function setUp() public {
        char = new Char();
        dms = new DMs();
        factory = new StoryFactory(address(dms));
    }

    function test_Increment() public {
        // counter.increment();
        // assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        // counter.setNumber(x);
        // assertEq(counter.number(), x);
    }
}
