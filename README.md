# BlockRPG
##### A fairly unnecessary exploration of what putting a tabletop game on-chain could look like.

I've been fascinated by the idea of trying to create a shared tabletop RPG world in which the various games inside a world are tracked on-chain. The blockchain would essentially serve as a database for what stories are active inside the world, which characters are a part of those stories, and more.

A player should be able to move a character between games seemlessly, for one. DMs should have certain data available about what _other_ groups in the world are doing. Importing into a VTT might even be possible with tooling that knows how to pull from the contracts.

One of the big design questions is precisely what data should be committed on-chain. Large amounts of text are poorly suited, perhaps ruling out full journal-like session summaries, but something like [Poster](https://eips.ethereum.org/EIPS/eip-3722) on a chain with low gas fees might make that more plausible.

I've written about this [in the past](https://mirror.xyz/wschwab.eth/0xYoQcn_fouvNxwkzw1Hj_ViXd-_bhdqJusW7z2e-FA), though since then I've diverged more from Loot and Rarity, and instead of seeing the building blocks of a game on-chain, I'm currently thinking of the chain just as a database, and the magic still happening around the table.

If these ideas interest you, feel free to reach out!

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
