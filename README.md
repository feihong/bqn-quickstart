# Feihong's BQN quickstart

## Installation

    curl -fsSL https://bun.sh/install | bash
    git clone --depth 1 https://github.com/mlochbaum/bqn

## Commands

Run a program from a file

    bun bqn/bqn.js hello.bqn

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
