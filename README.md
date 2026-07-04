# isLoop Summer School Projects

This repository contains all my projects for the [isLoop Summer School in 2026](https://isloop.pharo.org/2026-plovdiv/).

## Rock Paper Scissors

This is the first project we did, and is pretty basic.

Later, I added another version that can do custom games, such as [Rock-Paper-Scissors-Lizard-Spock](https://en.wikipedia.org/wiki/Rock_Paper_Scissors#Additional_weapons) or [the 2-paradox game](https://www.youtube.com/watch?v=r2whuz6tkb0).

An example of using the custom system:
```smalltalk
| game rock paper |
game := ParadoxGame rockPaperScissors. "or rockPaperScissorsLizardSpock, or twoParadox"
rock := game itemNamed: #rock.
paper := game itemNamed: #paper.

rock beats: paper "false"
```
