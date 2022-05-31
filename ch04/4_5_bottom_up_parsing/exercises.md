# Bottom-up Parsing

## 4.5.1

For the grammar `S -> 0 S 1 | 0 1` of Exercise 4.2.2(a), indicate the handle
in each of the following right-sentential forms:

a) 00<u>01</u>11.

b) 0<u>0S1</u>1.

## 4.5.2

Repeat Exercise 4.5.1 for the grammar `S -> SS+ | SS* | a` of Exercise 4.2.1
and the following right-sentential forms:

a) S<u>SS+</u>a*+.

b) <u>SS+</u>a*a+.

c) <u>a</u>aa*a++.

## 4.5.3

Give bottom-up parses for the following input strings and grammars:

a) The input 000111 according to the grammar of Exercise 4.5.1.

| Stack | Input   |
| ----- | ------: |
| $     | 000111$ |
| $0001 | 11$     |
| $00S  | 11$     |
| $00S1 | 1$      |
| $0S   | 1$      |
| $0S1  | $       |
| $S    | $       |

b) The input aaa*a++ according to the grammar of Exercise 4.5.2.

| Stack | Input    |
| ----- | -------: |
| $     | aaa*a++$ |
| $a    | aa*a++$  |
| $S    | aa*a++$  |
| $Sa   | a*a++$   |
| $SS   | a*a++$   |
| $SSa  | *a++$    |
| $SSS  | *a++$    |
| $SSS* | a++$     |
| $SS   | a++$     |
| $SSa  | ++$      |
| $SSS  | ++$      |
| $SSS+ | +$       |
| $SS   | +$       |
| $SS+  | $        |
| $S    | $        |

