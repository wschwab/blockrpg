// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Char, CharData } from "../src/Char.sol";

/**
 * some invariant notes:
 *      - classes and lvls must be same length
 *      - all values in lvls are non-zero
 */

contract CharTest is Test {
    Char public char;
    CharData public charData;

    function setUp() public {
        char = new Char();
        charData = new CharData();
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
