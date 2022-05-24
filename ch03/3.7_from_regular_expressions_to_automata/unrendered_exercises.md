# From Regular Expression to Automata

## Exercise 3.7.1

Convert to DFA's the NFA's of:

a) Fig. 3.26.

| NFA State | DFA State |    a    |    b    |
| --------- | --------- | ------- | ------- |
| {0, 1, 3} |     A     |    B    |    C    |
|    {2}    |     B     |    B    | invalid |
|    {4}    |     C     | invalid |    C    |

b) Fig. 3.29.

|   NFA State  | DFA State |    a    |    b    |
| ------------ | --------- | ------- | ------- |
|     {0}      |     A     |    B    |    A    |
|   {0, 1}     |     B     |    C    |    B    |
|  {0, 1, 2}   |     C     |    C    |    D    |
| {0, 1, 2, 3} |     D     |    C    |    D    |

c) Fig. 3.30.

|   NFA State  | DFA State |    a    |    b    |
| ------------ | --------- | ------- | ------- |
| {0, 1, 2, 3} |     A     |    A    |    A    |

## Exercise 3.7.2

use Algorithm 3.22 to simulate the NFA's:

a) Fig. 3.29.

| Input | Current NFA State |
| ----- | ----------------- |
|       |        {0}        |
|   a   |      {0, 1}       |
|   a   |     {0, 1, 2}     |
|   b   |   {0, 1, 2, 3}    |
|   b   |   {0, 1, 2, 3}    |

Because final states include the accepting state 3, the input
string $$a a b b$$ is accepted.

b) Fig. 3.30.

| Input | Current NFA State |
| ----- | ----------------- |
|       |   {0, 1, 2, 3}    |
|   a   |   {0, 1, 2, 3}    |
|   a   |   {0, 1, 2, 3}    |
|   b   |   {0, 1, 2, 3}    |
|   b   |   {0, 1, 2, 3}    |

The input string is accepted.

## Exercise 3.7.3

Convert the following regular expressions to deterministicnite automata,
using algorithms 3.23 and 3.20:

a) $$(a | b)^*$$

First of all, an NFA is created.

| NFA State |       a       |       b       | $$\epsilon$$  |
| --------- | ------------- | ------------- | ------------- |
|     0     | $$\emptyset$$ | $$\emptyset$$ |     {1, 7}    |
|     1     | $$\emptyset$$ | $$\emptyset$$ |     {2, 4}    |
|     2     |       {3}     | $$\emptyset$$ | $$\emptyset$$ |
|     3     | $$\emptyset$$ | $$\emptyset$$ |      {6}      |
|     4     | $$\emptyset$$ |      {5}      | $$\emptyset$$ |
|     5     | $$\emptyset$$ | $$\emptyset$$ |      {6}      |
|     6     | $$\emptyset$$ | $$\emptyset$$ |     {1, 7}    |
|     7     | $$\emptyset$$ | $$\emptyset$$ | $$\emptyset$$ |

Then, a DFA is converted to.

| NFA State          | DFA State | a   | b   |
| ------------------ | --------- | --- | --- |
| {0, 1, 2, 4, 7}    | A         | B   | C   |
| {1, 2, 3, 4, 6, 7} | B         | B   | C   |
| {1, 2, 4, 5, 6, 7} | C         | B   | C   |

b) $$(a^* | b^*)^*$$

| NFA State |       a       |       b       | $$\epsilon$$  |
| --------- | ------------- | ------------- | ------------- |
| 0         | $$\emptyset$$ | $$\emptyset$$ | {1, 11}       |
| 1         | $$\emptyset$$ | $$\emptyset$$ | {2, 6}        |
| 2         | $$\emptyset$$ | $$\emptyset$$ | {3, 5}        |
| 3         | {4}           | $$\emptyset$$ | $$\emptyset$$ |
| 4         | $$\emptyset$$ | $$\emptyset$$ | {5}           |
| 5         | $$\emptyset$$ | $$\emptyset$$ | {10}          |
| 6         | $$\emptyset$$ | $$\emptyset$$ | {7, 9}        |
| 7         | $$\emptyset$$ | {8}           | $$\emptyset$$ |
| 8         | $$\emptyset$$ | $$\emptyset$$ | {9}           |
| 9         | $$\emptyset$$ | $$\emptyset$$ | {10}          |
| 10        | $$\emptyset$$ | $$\emptyset$$ | {1, 11}       |
| 11        | $$\emptyset$$ | $$\emptyset$$ | $$\emptyset$$ |

| NFA State                        | DFA State | a   | b   |
| -------------------------------- | --------- | --- | --- |
| {0, 1, 2, 3, 5, 6, 7, 9, 10, 11} | A         | B   | C   |
| {1, 2, 3, 4, 5, 6, 7, 9, 10, 11} | B         | B   | C   |
| {1, 2, 3, 5, 6, 7, 8, 9, 10, 11} | C         | B   | C   |

c) $$
\delimitershortfall=-1pt
\left( (\epsilon | a) b^* \right)^*
$$

| NFA State |       a       |       b       | $$\epsilon$$  |
| --------- | ------------- | ------------- | ------------- |
| 0         | $$\emptyset$$ | $$\emptyset$$ | {1, 10}       |
| 1         | $$\emptyset$$ | $$\emptyset$$ | {2, 4}        |
| 2         | $$\emptyset$$ | $$\emptyset$$ | {3}           |
| 3         | $$\emptyset$$ | $$\emptyset$$ | {6}           |
| 4         | {5}           | $$\emptyset$$ | $$\emptyset$$ |
| 5         | $$\emptyset$$ | $$\emptyset$$ | {6}           |
| 6         | $$\emptyset$$ | $$\emptyset$$ | {7, 9}        |
| 7         | $$\emptyset$$ | {8}           | $$\emptyset$$ |
| 8         | $$\emptyset$$ | $$\emptyset$$ | {7, 9}        |
| 9         | $$\emptyset$$ | $$\emptyset$$ | {1, 10}       |
| 10        | $$\emptyset$$ | $$\emptyset$$ | $$\emptyset$$ |

| NFA State                    | DFA State | a       | b   |
| ---------------------------- | --------- | ------- | --- |
| {0, 1, 2, 3, 4, 6, 7, 9, 10} | A         | B       | C   |
| {1, 2, 3, 4, 5, 6, 7, 9, 10} | B         | B       | C   |
| {1, 2, 3, 4, 6, 7, 8, 9, 10} | C         | B       | C   |

d) $$(a | b)^* a b b (a | b)^*$$

| NFA State |       a       |       b       | $$\epsilon$$  |
| --------- | ------------- | ------------- | ------------- |
| 0         | $$\emptyset$$ | $$\emptyset$$ | {1, 7}        |
| 1         | $$\emptyset$$ | $$\emptyset$$ | {2, 4}        |
| 2         | {3}           | $$\emptyset$$ | $$\emptyset$$ |
| 3         | $$\emptyset$$ | $$\emptyset$$ | {6}           |
| 4         | $$\emptyset$$ | {5}           | $$\emptyset$$ |
| 5         | $$\emptyset$$ | $$\emptyset$$ | {6}           |
| 6         | $$\emptyset$$ | $$\emptyset$$ | {1, 7}        |
| 7         | {8}           | $$\emptyset$$ | $$\emptyset$$ |
| 8         | $$\emptyset$$ | {9}           | $$\emptyset$$ |
| 9         | $$\emptyset$$ | {10}          | $$\emptyset$$ |
| 10        | $$\emptyset$$ | $$\emptyset$$ | {11, 17}      |
| 11        | $$\emptyset$$ | $$\emptyset$$ | {12, 14}      |
| 12        | {13}          | $$\emptyset$$ | $$\emptyset$$ |
| 13        | $$\emptyset$$ | $$\emptyset$$ | {16}          |
| 14        | $$\emptyset$$ | {15}          | $$\emptyset$$ |
| 15        | $$\emptyset$$ | $$\emptyset$$ | {16}          |
| 16        | $$\emptyset$$ | $$\emptyset$$ | {11, 17}      |
| 17        | $$\emptyset$$ | $$\emptyset$$ | $$\emptyset$$ |

| NFA State                                      | DFA State | a       | b       |
| ---------------------------------------------- | --------- | ------- | ------- |
| {0, 1, 2, 4, 7}                                | A         | B       | C       |
| {1, 2, 3, 4, 6, 7, 8}                          | B         | B       | D       |
| {1, 2, 4, 5, 6, 7}                             | C         | B       | C       |
| {1, 2, 4, 5, 6, 7, 9}                          | D         | B       | E       |
| {1, 2, 4, 5, 6, 7, 10, 11, 12, 14, 17}         | E         | F       | G       |
| {1, 2, 3, 4, 6, 7, 8, 11, 12, 13, 14, 16, 17}  | F         | F       | H       |
| {1, 2, 4, 5, 6, 7, 11, 12, 14, 15, 16, 17}     | G         | F       | G       |
| {1, 2, 4, 5, 6, 7, 9, 11, 12, 14, 15, 16, 17}  | H         | F       | I       |
| {1, 2, 4, 5, 6, 7, 10, 11, 12, 14, 15, 16, 17} | I         | F       | G       |

