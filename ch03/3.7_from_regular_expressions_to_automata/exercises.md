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
string <img src="https://i.upmath.me/svg/a%20a%20b%20b" alt="a a b b" /> is accepted.

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

a) <img src="https://i.upmath.me/svg/(a%20%7C%20b)%5E*" alt="(a | b)^*" />

First of all, an NFA is created.

| NFA State |       a       |       b       | <img src="https://i.upmath.me/svg/%5Cepsilon" alt="\epsilon" />  |
| --------- | ------------- | ------------- | ------------- |
|     0     | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |     {1, 7}    |
|     1     | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |     {2, 4}    |
|     2     |       {3}     | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
|     3     | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |      {6}      |
|     4     | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |      {5}      | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
|     5     | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |      {6}      |
|     6     | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |     {1, 7}    |
|     7     | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |

Then, a DFA is converted to.

| NFA State          | DFA State | a   | b   |
| ------------------ | --------- | --- | --- |
| {0, 1, 2, 4, 7}    | A         | B   | C   |
| {1, 2, 3, 4, 6, 7} | B         | B   | C   |
| {1, 2, 4, 5, 6, 7} | C         | B   | C   |

b) <img src="https://i.upmath.me/svg/(a%5E*%20%7C%20b%5E*)%5E*" alt="(a^* | b^*)^*" />

| NFA State |       a       |       b       | <img src="https://i.upmath.me/svg/%5Cepsilon" alt="\epsilon" />  |
| --------- | ------------- | ------------- | ------------- |
| 0         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {1, 11}       |
| 1         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {2, 6}        |
| 2         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {3, 5}        |
| 3         | {4}           | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 4         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {5}           |
| 5         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {10}          |
| 6         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {7, 9}        |
| 7         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {8}           | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 8         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {9}           |
| 9         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {10}          |
| 10        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {1, 11}       |
| 11        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |

| NFA State                        | DFA State | a   | b   |
| -------------------------------- | --------- | --- | --- |
| {0, 1, 2, 3, 5, 6, 7, 9, 10, 11} | A         | B   | C   |
| {1, 2, 3, 4, 5, 6, 7, 9, 10, 11} | B         | B   | C   |
| {1, 2, 3, 5, 6, 7, 8, 9, 10, 11} | C         | B   | C   |

c) <img src="https://i.upmath.me/svg/%0A%5Cdelimitershortfall%3D-1pt%0A%5Cleft(%20(%5Cepsilon%20%7C%20a)%20b%5E*%20%5Cright)%5E*%0A" alt="
\delimitershortfall=-1pt
\left( (\epsilon | a) b^* \right)^*
" />

| NFA State |       a       |       b       | <img src="https://i.upmath.me/svg/%5Cepsilon" alt="\epsilon" />  |
| --------- | ------------- | ------------- | ------------- |
| 0         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {1, 10}       |
| 1         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {2, 4}        |
| 2         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {3}           |
| 3         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {6}           |
| 4         | {5}           | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 5         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {6}           |
| 6         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {7, 9}        |
| 7         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {8}           | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 8         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {7, 9}        |
| 9         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {1, 10}       |
| 10        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |

| NFA State                    | DFA State | a       | b   |
| ---------------------------- | --------- | ------- | --- |
| {0, 1, 2, 3, 4, 6, 7, 9, 10} | A         | B       | C   |
| {1, 2, 3, 4, 5, 6, 7, 9, 10} | B         | B       | C   |
| {1, 2, 3, 4, 6, 7, 8, 9, 10} | C         | B       | C   |

d) <img src="https://i.upmath.me/svg/(a%20%7C%20b)%5E*%20a%20b%20b%20(a%20%7C%20b)%5E*" alt="(a | b)^* a b b (a | b)^*" />

| NFA State |       a       |       b       | <img src="https://i.upmath.me/svg/%5Cepsilon" alt="\epsilon" />  |
| --------- | ------------- | ------------- | ------------- |
| 0         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {1, 7}        |
| 1         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {2, 4}        |
| 2         | {3}           | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 3         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {6}           |
| 4         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {5}           | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 5         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {6}           |
| 6         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {1, 7}        |
| 7         | {8}           | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 8         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {9}           | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 9         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {10}          | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 10        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {11, 17}      |
| 11        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {12, 14}      |
| 12        | {13}          | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 13        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {16}          |
| 14        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {15}          | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |
| 15        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {16}          |
| 16        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | {11, 17}      |
| 17        | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |

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

