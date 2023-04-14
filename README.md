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

## Modifiers cheatsheet

Constant

    666˙ 42
    666

Self/swap

    3 -˜ 7
    4
    ×˜ 7
    49

Atop

    3 -∘+ 4
    ¯7
    |∘- 4
    4

Over

    3 +○- 4
    ¯7
    |○- 4
    4

Before/bind

    3 -⊸+ 5
    2
    5 -⊸+ 3
    ¯2
    ÷⊸- 2
    -1.5

After/bind

    5 -⟜÷ 3
    4.666666666666667
    5 ÷⟜- 3
    ¯1.6666666666666667
    ÷⟜÷ 2
    4

## Links

- [BQN documentation](https://mlochbaum.github.io/BQN/doc/index.html)
- [BQN tutorials](https://mlochbaum.github.io/BQN/tutorial/index.html)
- [BQN primitives](https://mlochbaum.github.io/BQN/doc/primitive.html)
- [BQN system-provided values](https://mlochbaum.github.io/BQN/spec/system.html)
