// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// need to think of a good way to represent skills/feats/spells
// also quick access to how many levels of what the char posseses
// should be ERC721
contract Char {
    // the next available tokenId is characters.length
    CharData.CharStruct[] public characters;

    constructor() payable {}
}

contract CharData {
    /**
     * current thinking is that anything that isn't decided by the player shouldn't
     * be on-chain, so attr, race, yes, but don't need to store what modifier race
     * provides
     */

    struct CharStruct {
        // attributes should be provided already modified (eg by race)
        uint8[6] attrs;
        // lists all classes char has at least one level of
        CharData.CLASS[] classes;
        // should always be the same len as classes
        // lists number of lvls in ea class
        uint8[] lvls;
        uint8 hp;

        CharData.RACE race;
    }

    // can use this as an index in a uint8(6) each char will have
    enum ATTR {
        STR,
        DEX,
        CON,
        INT,
        WIS,
        CHA
    }

    // using D&D Beyond to figure which races to represent
    enum RACE {
        AARAKOCRA,
        DRAGONBORN,
        DWARF,
        DWARF_HILL,
        DWARF_MOUNTAIN,
        ELF,
        ELF_ELADRIN,
        ELF_HIGH,
        ELF_WOOD,
        GENSAI_AIR,
        GENSAI_EARTH,
        GENSAI_FIRE,
        GENSAI_WATER,
        GNOME,
        GNOME_DEEP,
        GNOME_ROCK,
        GOLIATH,
        HALF_ELF,
        HALF_ORC,
        HALFLING,
        HALFLING_LIGHTFOOT,
        HALFLING_STOUT,
        HUMAN,
        HUMAN_VARIANT,
        TIEFLING,
        VARIANT_AASIMAR,
        CUSTOM
    }

    enum CLASS {
        BARBARIAN,
        BARD,
        CLERIC,
        DRUID,
        FIGHTER,
        MONK,
        PALADIN,
        RANGER,
        ROGUE,
        SORCEROR,
        WARLOCK,
        WIZARD,
        CUSTOM
    }    
}