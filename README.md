# Feihong's BQN quickstart

## Installation

Install BQN.js

    curl -fsSL https://bun.sh/install | bash
    git clone --depth 1 https://github.com/mlochbaum/bqn

Install CBQN

    git clone --depth 1 https://github.com/dzaima/cbqn
    cd cbqn
    make REPLXX=1

Add `alias bqn='~/work/bqn-quickstart/cbqn/BQN'` to your `~/.zshrc`.

## Commands

Run a program

    bqn hello.bqn

Run a program using bqn.js

    bun bqn/bqn.js random-hanzi.bqn

Generate cheatsheet

    make cheatsheet

## Links

- [BQN documentation](https://mlochbaum.github.io/BQN/doc/index.html)
- [BQN tutorials](https://mlochbaum.github.io/BQN/tutorial/index.html)
- [BQN primitives](https://mlochbaum.github.io/BQN/doc/primitive.html)
- [BQN system-provided values](https://mlochbaum.github.io/BQN/spec/system.html)
- [BQN keymap](https://mlochbaum.github.io/BQN/keymap.html)
