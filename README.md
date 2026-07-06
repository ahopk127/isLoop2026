# isLoop Summer School Projects

This repository contains all my projects for the [isLoop Summer School in 2026](https://isloop.pharo.org/2026-plovdiv/).

## Rock Paper Scissors -- 2026-07-04 Sat

This is the first project we did, and is pretty basic.

We started with a simple implementation based on double dispatch.  Later, I added another version that can do custom games, such as [Rock-Paper-Scissors-Lizard-Spock](https://en.wikipedia.org/wiki/Rock_Paper_Scissors#Additional_weapons) or [the 2-paradox game](https://www.youtube.com/watch?v=r2whuz6tkb0).

This project's code is stored in the packages:
* `BaselineOfRockPaperScissors`
* `RockPaperScissors`
* `RockPaperScissors-Tests`

Get it with Metacello:
```smalltalk
Metacello new
	repository: 'github://ahopk127/isLoop2026:main';
	baseline: 'RockPaperScissors';
	load
```

An example of using the custom system:
```smalltalk
| game rock paper |
game := ParadoxGame rockPaperScissors. "or rockPaperScissorsLizardSpock, or twoParadox"
rock := game itemNamed: #rock.
paper := game itemNamed: #paper.

rock beats: paper "false"
```

Information about the project:
* [Exercise description](https://github.com/olekscode/isloop2026/blob/main/Exercises/RockPaperScissor.md)
* [Implementation by the event facilitator](https://github.com/olekscode/RockPaperScissors)

## Pharo Pull Request -- 2026-07-05 Sun

On Sunday, I made some contributions to Pharo itself:
* [Add examples to String>>#asPluralBasedOn:](https://github.com/pharo-project/pharo/pull/19851)

I also helped with a another issue:
* [String >> asHTMLString deserves some executable comments.](https://github.com/pharo-project/pharo/issues/18327)

That was all the programming we did for Day 2.
