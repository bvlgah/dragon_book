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

