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

## 4.7.2

Repeat Exercise 4.7.1 for each of the (augmented) grammars of Exercise 4.2.2(a)-(g).

a)

| Symbol | FIRST | FOLLOW |
| ------ | ----- | ------ |
| S      | {0}   | {1 $}  |

| LR(1) set     | LR(1) items                                                              |
| ------------- | ------------------------------------------------------------------------ |
| I<sub>0</sub> | [S' -> ·S, $] <br> [S -> ·0S1, $] <br> [S -> ·01]                        |
| I<sub>1</sub> | [S' -> S·, $]                                                            |
| I<sub>2</sub> | [S -> 0·S1, $] <br> [S -> 0·1, $] <br> [S -> ·0S1, 1] <br> [S -> ·01, 1] |
| I<sub>3</sub> | [S -> 0S·1, $]                                                           |
| I<sub>4</sub> | [S -> 01·, $]                                                            |
| I<sub>5</sub> | [S -> 0·S1, 1] <br> [S -> 0·1, 1] <br> [S -> ·0S1, 1] <br> [S -> ·01, 1] |
| I<sub>6</sub> | [S -> 0S1·, $]                                                           |
| I<sub>7</sub> | [S -> 0S·1, 1]                                                           |
| I<sub>8</sub> | [S -> 01·, 1]                                                            |
| I<sub>9</sub> | [S -> 0S1·, 1]                                                           |

| LALR(1) set    | LALR(1) items                                                                |
| -------------- | ---------------------------------------------------------------------------- |
| I<sub>0</sub>  | [S' -> ·S, $] <br> [S -> ·0S1, $] <br> [S -> ·01]                            |
| I<sub>1</sub>  | [S' -> S·, $]                                                                |
| I<sub>25</sub> | [S -> 0·S1, 1/$] <br> [S -> 0·1, 1/$] <br> [S -> ·0S1, 1] <br> [S -> ·01, 1] |
| I<sub>37</sub> | [S -> 0S·1, 1/$]                                                             |
| I<sub>48</sub> | [S -> 01·, 1/$]                                                              |
| I<sub>69</sub> | [S -> 0S1·, 1/$]                                                             |

b)

| Symbol | FIRST    | FOLLOW     |
| ------ | -------- | ---------- |
| S      | {+ \* a} | {+ \* a $} |

| LR(1) set      | LR(1) items                                                                                    |
| -------------- | ---------------------------------------------------------------------------------------------- |
| I<sub>0</sub>  | [S' -> ·S, $] <br> [S -> ·+SS, $] <br> [S -> ·\*SS, $] <br> [S -> ·a, $]                       |
| I<sub>1</sub>  | [S' -> S·, $]                                                                                  |
| I<sub>2</sub>  | [S -> +·SS, $] <br> [S -> ·+SS, +/\*/a] <br> [S -> ·\*SS, +/\*/a] <br> [S -> ·a, +/\*/a]       |
| I<sub>3</sub>  | [S -> \*·SS, $] <br> [S -> ·+SS, +/\*/a] <br> [S -> ·\*SS, +/\*/a] <br> [S -> ·a, +/\*/a]      |
| I<sub>4</sub>  | [S -> ·a, $]                                                                                   |
| I<sub>5</sub>  | [S -> +S·S, $] <br> [S -> ·+SS, $] <br> [S -> ·\*SS, $] <br> [S -> ·a, $]                      |
| I<sub>6</sub>  | [S -> +·SS, +/\*/a] <br> [S -> ·+SS, +/\*/a] <br> [S -> ·\*SS, +/\*/a] <br> [S -> ·a, +/\*/a]  |
| I<sub>7</sub>  | [S -> \*·SS, +/\*/a] <br> [S -> ·+SS, +/\*/a] <br> [S -> ·\*SS, +/\*/a] <br> [S -> ·a, +/\*/a] |
| I<sub>8</sub>  | [S -> ·a, +/\*/a]                                                                              |
| I<sub>9</sub>  | [S -> \*S·S, $] <br> [S -> ·+SS, $] <br> [S -> ·\*SS, $] <br> [S -> ·a, $]                     |
| I<sub>10</sub> | [S -> a·, $]                                                                                   |
| I<sub>11</sub> | [S -> +SS·, $]                                                                                 |
| I<sub>12</sub> | [S -> +S·S, +/\*/a] <br> [S -> ·+SS, +/\*/a] <br> [S -> ·\*SS, +/\*/a] <br> [S -> ·a, +/\*/a]  |
| I<sub>13</sub> | [S -> \*S·S, +/\*/a] <br> [S -> ·+SS, +/\*/a] <br> [S -> ·\*SS, +/\*/a] <br> [S -> ·a, +/\*/a] |
| I<sub>14</sub> | [S -> a·, +/\*/a]                                                                              |
| I<sub>15</sub> | [S -> \*SS·, $]                                                                                |
| I<sub>16</sub> | [S -> +SS·, +/\*/a]                                                                            |
| I<sub>17</sub> | [S -> \*SS·, +/\*/a]                                                                           |

| LALR(1) set       | LALR(1) items |
| ----------------- | ------------- |
| I<sub>0</sub>     | [S' -> ·S, $] <br> [S -> ·+SS, $] <br> [S -> ·\*SS, $] <br> [S -> ·a, $]                               |
| I<sub>1</sub>     | [S' -> S·, $]                                                                                          |
| I<sub>2,6</sub>   | [S -> +·SS, +/\*/a/$] <br> [S -> ·+SS, +/\*/a] <br> [S -> ·\*SS, +/\*/a] <br> [S -> ·a, +/\*/a]        |
| I<sub>3,7</sub>   | [S -> \*·SS, +/\*/a/$] <br> [S -> ·+SS, +/\*/a] <br> [S -> ·\*SS, +/\*/a] <br> [S -> ·a, +/\*/a]       |
| I<sub>4,8</sub>   | [S -> ·a, +/\*/a/$]                                                                                    |
| I<sub>5,12</sub>  | [S -> +S·S, +/\*/a/$] <br> [S -> ·+SS, +/\*/a/$] <br> [S -> ·\*SS, +/\*/a/$] <br> [S -> ·a, +/\*/a/$]  |
| I<sub>9,13</sub>  | [S -> \*S·S, +/\*/a/$] <br> [S -> ·+SS, +/\*/a/$] <br> [S -> ·\*SS, +/\*/a/$] <br> [S -> ·a, +/\*/a/$] |
| I<sub>10,14</sub> | [S -> a·, +/\*/a/$]                                                                                    |
| I<sub>11,16</sub> | [S -> +SS·, +/\*/a/$]                                                                                  |
| I<sub>15,17</sub> | [S -> \*SS·, +/\*/a/$]                                                                                 |

c)

| Symbol | FIRST | FOLLOW  |
| ------ | ----- | ------- |
| S      | {( ε} | {( ) $} |

| LR(1) set     | LR(1) items                                                    |
| ------------- | -------------------------------------------------------------- |
| I<sub>0</sub> | [S' -> ·S, $] <br> [S -> ·S(S)S, (/$] <br> [S -> ε·, (/$]      |
| I<sub>1</sub> | [S' -> S·, $] <br> [S -> S·(S)S, (/$]                          |
| I<sub>2</sub> | [S -> S(·S)S, (/$] <br> [S -> ·S(S)S, )] <br> [S -> ε·, )]     |
| I<sub>3</sub> | [S -> S(S·)S, (/$] <br> [S -> S·(S)S, )]                       |
| I<sub>4</sub> | [S -> S(·S)S, )] <br> [S -> ·S(S)S, )] <br> [S -> ε·, )]       |
| I<sub>5</sub> | [S -> S(S)·S, (/$] <br> [S -> ·S(S)S, (/$] <br> [S -> ε·, (/$] |
| I<sub>6</sub> | [S -> S(S·)S, )] <br> [S -> S·(S)S, )]                         |
| I<sub>7</sub> | [S -> S(S)S·, (/$] <br> [S -> S·(S)S, (/$]                     |
| I<sub>8</sub> | [S -> S(S)·S, )] <br> [S -> ·S(S)S, )] <br> [S -> ε·, )]       |
| I<sub>9</sub> | [S -> S(S)S·, )] <br> [S -> S·(S)S, )]                         |

| LALR(1) set     | LALR(1) items                                                        |
| --------------- | -------------------------------------------------------------------- |
| I<sub>0</sub>   | [S' -> ·S, $] <br> [S -> ·S(S)S, (/$] <br> [S -> ε·, (/$]            |
| I<sub>1</sub>   | [S' -> S·, $] <br> [S -> S·(S)S, (/$]                                |
| I<sub>2,4</sub> | [S -> S(·S)S, (/)/$] <br> [S -> ·S(S)S, )] <br> [S -> ε·, )]         |
| I<sub>3,6</sub> | [S -> S(S·)S, (/)/$] <br> [S -> S·(S)S, )]                           |
| I<sub>5,8</sub> | [S -> S(S)·S, (/)/$] <br> [S -> ·S(S)S, (/)/$] <br> [S -> ε·, (/)/$] |
| I<sub>7,9</sub> | [S -> S(S)S·, (/)/$] <br> [S -> S·(S)S, (/)/$]                       |

## 4.7.3

For the grammar of Exercise 4.7.1, use Algorithm 4.63 to compute the collection of LALR sets of items from the kernels of the LR(0) sets of items.

| Symbol | FIRST | FOLLOW    |
| ------ | ----- | --------- |
| S      | {a}   | {a + * $} |

| LR(0) set     | LR(0) items                                                                                       | LR(0) kernel items                                     |
| ------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------ |
| I<sub>0</sub> | S' -> ·S <br> S -> ·SS+ <br> S -> ·SS* <br> S -> ·a                                               | S' -> ·S                                               |
| I<sub>1</sub> | S' -> S· <br> S -> S·S+ <br> S -> S·S* <br> S -> ·SS+ <br> S -> ·SS* <br> S -> ·a                 | S' -> S· <br> S -> S·S+ <br> S -> S·S*                 |
| I<sub>2</sub> | S -> a·                                                                                           | S -> a·                                                |
| I<sub>3</sub> | S -> SS·+ <br> S -> SS·* <br> S -> S·S+ <br> S -> S·S* <br> S -> ·SS+ <br> S -> ·SS* <br> S -> ·a | S -> SS·+ <br> S -> SS·* <br> S -> S·S+ <br> S -> S·S* |
| I<sub>4</sub> | S -> SS+·                                                                                         | S -> SS+·                                              |
| I<sub>5</sub> | S -> SS\*·                                                                                        | S -> SS\*·                                             |

| LR(0) kernel item         | CLOSURE                                                                             |
| ------------------------- | ----------------------------------------------------------------------------------- |
| I<sub>0</sub>: S' -> ·S   | [S' -> ·S, #] <br> [S -> ·SS+, a/#] <br> [S -> ·SS\*, a/#] <br> [S -> ·a, a/#]      |
| I<sub>1</sub>: S' -> S·   | [S -> S·, #]                                                                        |
| I<sub>1</sub>: S -> S·S+  | [S -> S·S+, #] <br> [S -> ·SS+, a/+] <br> [S -> ·SS\*. a/+] <br> [S -> ·a, a/+]     |
| I<sub>1</sub>: S -> S·S\* | [S -> S·S\*, #] <br> [S -> ·SS+, a/\*] <br> [S -> ·SS\*, a/\*] <br> [S -> ·a, a/\*] |
| I<sub>2</sub>: S -> a·    | [S -> a·, #]                                                                        |
| I<sub>3</sub>: S -> SS·+  | [S -> SS·+, #]                                                                      |
| I<sub>3</sub>: S -> SS·\* | [S -> SS·\*, #]                                                                     |
| I<sub>3</sub>: S -> S·S+  | [S -> S·S+, #] <br> [S -> ·SS+, a/+] <br> [S -> ·SS\*, a/+] <br> [S -> ·a, a/+]     |
| I<sub>3</sub>: S -> S·S\* | [S -> S·S\*, #] <br> [S -> ·SS+, a/\*] <br> [S -> ·SS\*, a/\*] <br> [S -> ·a, a/\*] |
| I<sub>4</sub>: S -> SS+·  | [S -> SS+·, #]                                                                      |
| I<sub>5</sub>: S -> SS\*· | [S -> SS\*·, #]                                                                     |

| From                      | To                                                                                                               |
| ------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| I<sub>0</sub>: S -> ·S    | I<sub>1</sub>: S' -> S· <br> I<sub>1</sub>: S -> S·S+ <br> I<sub>1</sub>: S -> S·S\* <br> I<sub>2</sub>: S -> a· |
| I<sub>1</sub>: S -> S·S+  | I<sub>3</sub>: S -> SS·+                                                                                         |
| I<sub>1</sub>: S -> S·S\* | I<sub>3</sub>: S -> SS·\*                                                                                        |
| I<sub>3</sub>: S -> SS·+  | I<sub>4</sub>: S -> SS+·                                                                                         |
| I<sub>3</sub>: S -> SS·\* | I<sub>5</sub>: S -> SS\*·                                                                                        |
| I<sub>3</sub>: S -> S·S+  | I<sub>3</sub>: S -> SS·+                                                                                         |
| I<sub>3</sub>: S -> S·S\* | I<sub>3</sub>: S -> SS·\*                                                                                        |

| LALR(1) kernel item       | LOOKAHEADS |
| ------------------------- | ---------- |
| I<sub>0</sub>: S' -> ·S   | $          |
| I<sub>1</sub>: S' -> S·   | $          |
| I<sub>1</sub>: S -> S·S+  | a/$        |
| I<sub>1</sub>: S -> S·S\* | a/$        |
| I<sub>2</sub>: S -> a·    | a/$        |
| I<sub>3</sub>: S -> SS·+  | a/+/\*/$   |
| I<sub>3</sub>: S -> SS·\* | a/+/\*/$   |
| I<sub>3</sub>: S -> S·S+  | a/+/\*     |
| I<sub>3</sub>: S -> S·S\* | a/+/\*     |
| I<sub>4</sub>: S -> SS+·  | a/+/\*/$   |
| I<sub>5</sub>: S -> SS\*· | a/+/\*/$   |

| LALR(1) set   | LALR(1) kernel item                                                                                  |
| ------------- | ---------------------------------------------------------------------------------------------------- |
| I<sub>0</sub> | [S' -> ·S, $]                                                                                        |
| I<sub>1</sub> | [S' -> S·, $] <br> [S -> S·S+, a/$] <br> [S -> S·S\*, a/$]                                           |
| I<sub>2</sub> | [S -> a·, a/$]                                                                                       |
| I<sub>3</sub> | [S -> SS·+, a/+/\*/$] <br> [S -> SS·\*, a/+/\*/$] <br> [S -> S·S+, a/+/\*] <br> [S -> S·S\*, a/+/\*] |
| I<sub>4</sub> | [S -> SS+·, a/+/\*/$]                                                                                |
| I<sub>5</sub> | [S -> SS\*·, a/+/\*/$]                                                                               |

## 4.7.4

Show that the following grammar

`S -> Aa | bAc | dc | bda`

`A -> d`

is LALR(1) but not SLR(1).

Answer:

| Symbol | FIRST | FOLLOW |
| ------ | ----- | ------ |
| S      | {d b} | {$}    |
| A      | {d}   | {a c}  |

| LR(0) set      | LR(0) items                                                                     |
| -------------- | ------------------------------------------------------------------------------- |
| I<sub>0</sub>  | S' -> ·S <br> S -> ·Aa <br> S -> ·bAc <br> S -> ·dc <br> S -> ·bda <br> A -> ·d |
| I<sub>1</sub>  | S' -> S·                                                                        |
| I<sub>2</sub>  | S -> A·a                                                                        |
| I<sub>3</sub>  | S -> b·Ac <br> S -> b·da <br> A -> ·d                                           |
| I<sub>4</sub>  | S -> d·c <br> A -> d·                                                           |
| I<sub>5</sub>  | S -> Aa·                                                                        |
| I<sub>6</sub>  | S -> bA·c                                                                       |
| I<sub>7</sub>  | S -> bd·a <br> A -> d·                                                          |
| I<sub>8</sub>  | S -> dc·                                                                        |
| I<sub>9</sub>  | S -> bAc·                                                                       |
| I<sub>10</sub> | S -> bda·                                                                       |

The grammar is not SLR(1) since there are shift/reduce conflicts:

- LR(0) state 4 can shift or reduce by `A -> d` on input `c`.

- LR(0) state 7 can shift or reduce by `A -> d` on input `a`.

| LR(0) kernel item         | CLOSURE                                                                                                       |
| ------------------------- | ------------------------------------------------------------------------------------------------------------- |
| I<sub>0</sub>: S' -> ·S   | [S' -> ·S, #] <br> [S -> ·Aa, #] <br> [S -> ·bAc, #] <br> [S -> ·dc, #] <br> [S -> ·bda, #] <br> [A -> ·d, a] |
| I<sub>1</sub>: S' -> S·   | [S' -> S·, #]                                                                                                 |
| I<sub>2</sub>: S -> A·a   | [S' -> A·a, #]                                                                                                |
| I<sub>3</sub>: S -> b·Ac  | [S -> b·Ac, #] <br> [A -> ·d, c]                                                                              |
| I<sub>3</sub>: S -> b·da  | [S -> b·da, #]                                                                                                |
| I<sub>4</sub>: S -> d·c   | [S -> d·c, #]                                                                                                 |
| I<sub>4</sub>: A -> d·    | [A -> d·, #]                                                                                                  |
| I<sub>5</sub>: S -> Aa·   | [S -> Aa·, #]                                                                                                 |
| I<sub>6</sub>: S -> bA·c  | [S -> bA·c, #]                                                                                                |
| I<sub>7</sub>: S -> bd·a  | [S -> bd·a, #]                                                                                                |
| I<sub>7</sub>: A -> d·    | [A -> d·, #]                                                                                                  |
| I<sub>8</sub>: S -> dc·   | [S -> dc·, #]                                                                                                 |
| I<sub>9</sub>: S -> bAc·  | [S -> bAc·, #]                                                                                                |
| I<sub>10</sub>: S -> bda· | [S -> bda·, #]                                                                                                |

| Propagate from           | To                                                                                                                                            |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------- |
| I<sub>0</sub>: S' -> ·S  | I<sub>1</sub>: S' -> S· <br> I<sub>2</sub>: S -> A·a <br> I<sub>3</sub>: S -> b·Ac <br> I<sub>3</sub>: S -> b·da <br> I<sub>4</sub>: S -> d·c |
| I<sub>2</sub>: S -> A·a  | I<sub>5</sub>: S -> Aa·                                                                                                                       |
| I<sub>3</sub>: S -> b·Ac | I<sub>6</sub>: S -> bA·c                                                                                                                      |
| I<sub>3</sub>: S -> b·da | I<sub>7</sub>: S -> bd·a                                                                                                                      |
| I<sub>4</sub>: S -> d·c  | I<sub>8</sub>: S -> dc·                                                                                                                       |
| I<sub>6</sub>: S -> bA·c | I<sub>9</sub>: S -> bAc·                                                                                                                      |
| I<sub>7</sub>: S -> bd·a | I<sub>10</sub>: S -> bda·                                                                                                                     |

| LR(0) kernel item         | Lookaheads |
| ------------------------- | ---------- |
| I<sub>0</sub>: S' -> ·S   | $ |
| I<sub>1</sub>: S' -> S·   | $ |
| I<sub>2</sub>: S -> A·a   | $ |
| I<sub>3</sub>: S -> b·Ac  | $ |
| I<sub>3</sub>: S -> b·da  | $ |
| I<sub>4</sub>: S -> d·c   | $ |
| I<sub>4</sub>: A -> d·    | a |
| I<sub>5</sub>: S -> Aa·   | $ |
| I<sub>6</sub>: S -> bA·c  | $ |
| I<sub>7</sub>: S -> bd·a  | $ |
| I<sub>7</sub>: A -> d·    | c |
| I<sub>8</sub>: S -> dc·   | $ |
| I<sub>9</sub>: S -> bAc·  | $ |
| I<sub>10</sub>: S -> bda· | $ |

| LALR(1) State | a   | b  | c  | d  | $   | S | A |
| ------------- | --- | -- | -- | -- | --- | - | - |
| 0             |     | s3 |    | s4 |     | 1 | 2 |
| 1             |     |    |    |    | acc |   |   |
| 2             | s5  |    |    |    |     |   |   |
| 3             |     |    |    | s7 |     |   | 6 |
| 4             | r5  |    | s8 |    |     |   |   |
| 5             |     |    |    |    | r1  |   |   |
| 6             |     |    | s9 |    |     |   |   |
| 7             | s10 |    | r5 |    |     |   |   |
| 8             |     |    |    |    | r3  |   |   |
| 9             |     |    |    |    | r2  |   |   |
| 10            |     |    |    |    | r4  |   |   |

There is no shift/reduce or reduce/reduce conflict in the LALR(1) parsing table, so the grammar is LALR(1).

## 4.7.5

Show that the following grammar

`S -> Aa | bAc | Bc | bBa`

`A -> d`

`B -> d`

is LR(1) but not LALR(1).

Answer:

| Symbol | FIRST | SECOND |
| ------ | ----- | ------ |
| S      | {b d} | {$}    |
| A      | {d}   | {a c}  |
| B      | {d}   | {a c}  |

| LR(1) set      | LR(1) items |
| -------------- | ----------- |
| I<sub>0</sub>  | [S' -> ·S, $] <br> [S -> ·Aa, $] <br> [S -> ·bAc, $] <br> [S -> ·Bc, $] <br> [S -> ·bBa, $] <br> [A -> ·d, a] <br> [B -> ·d, c] |
| I<sub>1</sub>  | [S -> b·Ac, $] <br> [S -> b·Ba, $] <br> [A -> ·d, c] <br> [B -> ·d, a]                                                          |
| I<sub>2</sub>  | [A -> d·, a] <br> [B -> d·, c]                                                                                                  |
| I<sub>3</sub>  | [S' -> S·, $]                                                                                                                   |
| I<sub>4</sub>  | [S -> A·a, $]                                                                                                                   |
| I<sub>5</sub>  | [S -> B·c, $]                                                                                                                   |
| I<sub>6</sub>  | [A -> d·, c] <br> [B -> d·, a]                                                                                                  |
| I<sub>7</sub>  | [S -> bA·c, $]                                                                                                                  |
| I<sub>8</sub>  | [S -> bB·a, $]                                                                                                                  |
| I<sub>9</sub>  | [S -> Aa·, $]                                                                                                                   |
| I<sub>10</sub> | [S -> Bc·, $]                                                                                                                   |
| I<sub>11</sub> | [S -> bAc·, $]                                                                                                                  |
| I<sub>12</sub> | [S -> bBa·, $]                                                                                                                  |

| LR(1) state | a   | b  | c   | d  | $   | S | A | B |
| ----------- | --- | -- | --- | -- | --- | - | - | - |
| 0           |     | s1 |     | s2 |     | 3 | 4 | 5 |
| 1           |     |    |     | s6 |     |   | 7 | 8 |
| 2           | r5  |    | r6  |    |     |   |   |   |
| 3           |     |    |     |    | acc |   |   |   |
| 4           | s9  |    |     |    |     |   |   |   |
| 5           |     |    | s10 |    |     |   |   |   |
| 6           | r6  |    | r5  |    |     |   |   |   |
| 7           |     |    | s11 |    |     |   |   |   |
| 8           | s12 |    |     |    |     |   |   |   |
| 9           |     |    |     |    | r1  |   |   |   |
| 10          |     |    |     |    | r3  |   |   |   |
| 11          |     |    |     |    | r2  |   |   |   |
| 12          |     |    |     |    | r4  |   |   |   |

There is no shift/reduce or reduce/reduce conflict, so the grammar is LR(1).

As for the LALR(1) sets of items, the above `I<sub>2</sub>` and `I<sub>6</sub>` can be merged.
The new state `2,6` has a reduce/reduce conflict:

- It can reduce by `A -> d` or `B -> d` on input `a` or `c`.

Therefore, the grammar is not LALR(1).

