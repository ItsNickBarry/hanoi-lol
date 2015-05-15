# hanoi-lol
The hanoi-lol repository contains an implementation of [Towers of Hanoi][hanoi] in [LOLCODE][lolcode], the alleged language of LOLCATS.

The code is amusingly [human-readable][code].

To run it, use Justin Meza's LOLCODE interpreter, [lci][lci].

## Highlights
Comments in LOLCODE are expressed in an unassuming manner:
```lolcode
BTW too heavy
```

Nobody can be expected to read multi-line comments:
```lolcode
OBTW
  The main game loop.

  Very fun.
TLDR
```

One must be polite to the LOLCODE interpreter:
```lolcode
HAI
  BTW code goes here
KTHXBYE
```

Because LOLCODE does not support arrays, the states of the towers are represented by strings:
```lolcode
I HAS A TOWERLEFT ITZ "SMALLMEDIUMBIG"
I HAS A TOWERMIDDLE ITZ "EMPTY"
I HAS A TOWERRIGHT ITZ "EMPTY"
```

Because LOLCODE does not support string manipulation beyond concatenation, "WTF?" statements are required to determine the state of the towers and act accordingly:
```lolcode
FROM, WTF?
  OMG "SMALLMEDIUMBIG"
    NEWFROM R "MEDIUMBIG"
    GTFO
  OMG "MEDIUMBIG"
    NEWFROM R "BIG"
    GTFO
  OMG "SMALLBIG"
    NEWFROM R "BIG"
    GTFO
  OMG "SMALLMEDIUM"
    NEWFROM R "MEDIUM"
    GTFO
  OMG "SMALL"
    NEWFROM R "EMPTY"
    GTFO
  OMG "MEDIUM"
    NEWFROM R "EMPTY"
    GTFO
  OMG "BIG"
    NEWFROM R "EMPTY"
    GTFO
  OMG "EMPTY"
    GTFO  BTW this shouldn't happen
OIC
```

[code]: ./lib/hanoi.lol
[hanoi]: https://en.wikipedia.org/wiki/Tower_of_Hanoi
[lolcode]: https://en.wikipedia.org/wiki/LOLCODE
[lci]: https://github.com/justinmeza/lci
