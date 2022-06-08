# More Powerful LR Parsers

## 4.7.1

Construct the

a) canonical LR, and

b) LALR

sets of items for the grammar `S -> SS + | S S * | a` of Exercise 4.2.1.

| Symbol | FIRST | FOLLOW    |
| ------ | ----- | --------- |
| S      | {a}   | {+ * a $} |

a)

| LR(1) set     | LR(1) items                                                                                                                                                                |
| ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| I<sub>0</sub> | [S' -> ·S, $] <br> [S -> ·SS+, $] <br> [S -> ·SS*, $] <br> [S -> ·a, $]                                                                                                    |
| I<sub>1</sub> | [S -> a·, $]                                                                                                                                                               |
| I<sub>2</sub> | [S' -> S·, $] <br> [S -> S·S+, $] <br> [S -> S·S*, $] <br> [S -> ·SS+, +/\*/a] <br> [S -> ·SS*, +/\*/a] <br> [S -> ·a, +/*/a]                                              |
| I<sub>3</sub> | [S -> a·, +/*/a]                                                                                                                                                           |
| I<sub>4</sub> | [S -> SS·+, $] <br> [S -> SS·\*, $] <br> [S -> S·S+, +/\*/a] <br> [S -> S·S*, +/\*/a] <br> [S -> ·SS+, +/\*/a] <br> [S -> ·SS*, +/\*/a] <br> [S -> ·a, +/\*/a]             |
| I<sub>5</sub> | [S -> SS+·, $]                                                                                                                                                             |
| I<sub>6</sub> | [S -> SS*·, $]                                                                                                                                                             |
| I<sub>7</sub> | [S -> SS·+, +/\*/a] <br> [S -> SS·\*, +/\*/a] <br> [S -> S·S+, +/\*/a] <br> [S -> S·S\*, +/\*/a] <br> [S -> ·SS+, +/\*/a] <br> [S -> ·SS\*, +/\*/a] <br> [S -> ·a, +/\*/a] |
| I<sub>8</sub> | [S -> SS+·, +/*/a]                                                                                                                                                         |
| I<sub>9</sub> | [S -> SS*·, +/*/a]                                                                                                                                                         |

b)

By merging, LALR sets of items are as follows:

| LALR(1) set    | LALR(1) items                                                                                                                                                                 |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| I<sub>0</sub>  | [S' -> ·S, $] <br> [S -> ·SS+, $] <br> [S -> ·SS*, $] <br> [S -> ·a, $]                                                                                                       |
| I<sub>13</sub> | [S -> a·, +/*/a/$]                                                                                                                                                            |
| I<sub>2</sub>  | [S' -> S·, $] <br> [S -> S·S+, $] <br> [S -> S·S\*, $] <br> [S -> ·SS+, +/\*/a] <br> [S -> ·SS\*, +/\*/a] <br> [S -> ·a, +/\*/a]                                              |
| I<sub>47</sub> | [S -> SS·+, +/\*/a/$] <br> [S -> SS·\*, +/\*/a/$] <br> [S -> S·S+, +/\*/a] <br> [S -> S·S\*, +/\*/a] <br> [S -> ·SS+, +/\*/a] <br> [S -> ·SS*, +/\*/a] <br> [S -> ·a, +/\*/a] |
| I<sub>58</sub> | [S -> SS+·, +/*/a/$]                                                                                                                                                          |
| I<sub>69</sub> | [S -> SS*·, +/*/a/$]                                                                                                                                                          |

