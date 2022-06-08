# Reproduction of the WEGLD hack (2022/06/06)

On 2022/06/06, a hacker stole 1.650M EGLD from the WEGLD smart contracts ([450,000 EGLD on shard 0](https://explorer.elrond.com/transactions/39998ab5c929fa67e95d0c64081697fc4207235dbfeaaff10fb2704a6c7716b6), [800,000 EGLD on shard 1](https://explorer.elrond.com/transactions/41effd8536376f3a2edba7074c02776edae94bb5b464485ac414847202eebbe2), [400,000 EGLD on shard 2](https://explorer.elrond.com/transactions/8b8c332577e5b8bdd4e13450ea92b7c6b0ca15399f1f0bb38fc215cfc3ddb490)). This hack has been fixed by the Elrond team.

With this repository, you will be able to reproduce exactly what the hacker did to steal the EGLD (using his smart contract code).

Thanks to this reproduction, we understood how the exploit was possible. If you want to understand the exploit too, go check [the explanation repository](https://github.com/arda-org/wegld-hack-explanation).

## Repository overview

This repository contains the following files:

- `hacker.wasm`: the compiled code of the smart contract used by the hacker ([available here](https://explorer.elrond.com/accounts/erd1qqqqqqqqqqqqqpgq85hhnppjcdamledp3usgkm3lm832jekw2zhsajjztn/code))
- `hacker.wat`: the decompiled code of the smart contract used by the hacker ([decompiled with this tool](https://webassembly.github.io/wabt/demo/wasm2wat/))
- `wrapper.wasm`: the compiled code of the WEGLD smart contract ([available here](https://explorer.elrond.com/accounts/erd1qqqqqqqqqqqqqpgqhe8t5jewej70zupmh44jurgn29psua5l2jps3ntjj3/code))
- `wrapper.wat`: the decompiled code of the WEGLD smart contract ([decompiled with this tool](https://webassembly.github.io/wabt/demo/wasm2wat/))
- `mandos/hack.scen.json`: a scenario that reproduces the hack on a version of the Elrond network running on your computer. You can see that at the end of the scenario, the hacker has successfully withdrawn 800,000 EGLD from the WEGLD smart contract.

## Reproduction

Here is how to reproduce the hack:

1. Install `erdpy` (cf. [tutorial](https://docs.elrond.com/sdk-and-tools/erdpy/installing-erdpy/))
2. Clone this repository
3. Open a terminal in the repository directory
4. Run the hack scenario: `erdpy contract test`

The scenario in `mandos/hack.scen.json` should succeed. You can see that at the end of the scenario, the hacker has successfully withdrawn 800,000 EGLD from the WEGLD smart contract.
