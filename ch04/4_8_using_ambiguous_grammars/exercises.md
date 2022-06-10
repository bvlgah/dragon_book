# Using Ambiguous Grammars

## 4.8.1

a)

| Symbol | FIRST  | FOLLOW                                              |
| ------ | ------ | --------------------------------------------------- |
| E      | {( id} | {θ<sub>1</sub> θ<sub>1</sub> ... θ<sub>n</sub> ) $} |

| LR(0) set        | LR(0) items                                                                                                       |
| ---------------- | ----------------------------------------------------------------------------------------------------------------- |
| I<sub>0</sub>    | E' -> ·E <br> E -> ·Eθ<sub>1</sub>E <br> ... <br> E -> ·Eθ<sub>n</sub>E <br> E -> ·(E) <br> E -> ·id              |
| I<sub>1</sub>    | E -> (·E) <br> E -> ·Eθ<sub>1</sub>E <br> ... <br> E -> ·Eθ<sub>n</sub>E <br> E -> ·(E) <br> E -> ·id             |
| I<sub>2</sub>    | E -> id·                                                                                                          |
| I<sub>3</sub>    | E' -> E· <br> E -> E·θ<sub>1</sub>E <br> ... <br> E -> E·θ<sub>n</sub>E                                           |
| I<sub>4</sub>    | E -> (E·) <br> E -> E·θ<sub>1</sub>E <br> ... <br> E -> E·θ<sub>n</sub>E                                          |
| I<sub>5</sub>    | E -> Eθ<sub>1</sub>·E <br> E -> ·Eθ<sub>1</sub>E <br> ... <br> E -> ·Eθ<sub>n</sub>E <br> E -> ·(E) <br> E -> ·id |
| ...              | ...                                                                                                               |
| I<sub>n+4</sub>  | E -> Eθ<sub>n</sub>·E <br> E -> ·Eθ<sub>1</sub>E <br> ... <br> E -> ·Eθ<sub>n</sub>E <br> E -> ·(E) <br> E -> ·id |
| I<sub>n+5</sub>  | E -> (E)·                                                                                                         |
| I<sub>n+6</sub>  | E -> Eθ<sub>1</sub>E· <br> E -> E·θ<sub>1</sub>E <br> ... <br> E -> E·θ<sub>n</sub>E                              |
| ...              | ...                                                                                                               |
| I<sub>2n+5</sub> | E -> Eθ<sub>n</sub>E· <br> E -> E·θ<sub>1</sub>E <br> ... <br> E -> E·θ<sub>n</sub>E                              |

b)

Associating state n+6 to 2n+5 with operator θ<sub>1</sub> to θ<sub>n</sub>,
such a state reduces on any input operator symbol whose precedence is lower
than or equal to that of the associated operator and shifts on operators with higher
precedence.

c)

| LR(0) state | θ<sub>1</sub> | ... | θ<sub>n</sub> | (   | )    | id  | $    | E    |
| ----------- | ------------- | --- | ------------- | --- | ---- | --- | ---- | ---- |
| 0           |               | ... |               | s1  |      | s2  |      | 3    |
| 1           |               | ... |               | s1  |      | s2  |      | 4    |
| 2           | rn+2          | ... | rn+2          |     | rn+2 |     | rn+2 |      |
| 3           | s5            | ... | sn+4          |     |      |     | acc  |      |
| 4           | s5            | ... | sn+4          |     | sn+5 |     |      |      |
| 5           |               | ... |               | s1  |      | s2  |      | n+6  |
| ...         | ...           | ... | ...           | ... | ...  | ... | ...  | ...  |
| n+4         |               | ... |               | s1  |      | s2  |      | 2n+5 |
| n+5         | rn+1          | ... | rn+1          |     | rn+1 |     | rn+1 |      |
| n+6         | r1            | ... | sn+4          |     | r1   |     | r1   |      |
| ...         | ...           | ... | ...           | ... | ...  | ... | ...  | ...  |
| 2n+5        | rn            | ... | rn            |     | rn   |     | rn   |      |

d)

| Symbol          | First  | Follow                                              |
| --------------- | ------ | --------------------------------------------------- |
| E<sub>1</sub>   | {( id} | {θ<sub>1</sub> ) $}                                 |
| E<sub>2</sub>   | {( id} | {θ<sub>1</sub> θ<sub>2</sub> ) $}                   |
| ...             | ...    | ...                                                 |
| E<sub>n</sub>   | {( id} | {θ<sub>1</sub> θ<sub>2</sub> ... θ<sub>n</sub> ) $} |
| E<sub>n+1</sub> | {( id} | {θ<sub>1</sub> θ<sub>2</sub> ... θ<sub>n</sub> ) $} |

| LR(0) set        | LR(0) items                                                                                                                                                                      |
| ---------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| I<sub>0</sub>    | E -> ·E<sub>1</sub> <br> E<sub>1</sub> -> ·E<sub>1</sub>θ<sub>1</sub>E<sub>2</sub> <br> ... <br> E<sub>n+1</sub> -> ·(E<sub>1</sub>) <br> E<sub>n+1</sub> -> ·id                 |
| I<sub>1</sub>    | E<sub>n+1</sub> -> (·E<sub>1</sub>) <br> E<sub>1</sub> -> ·E<sub>1</sub>θ<sub>1</sub>E<sub>2</sub> <br> ... <br> E<sub>n+1</sub> -> ·(E<sub>1</sub>) <br> E<sub>n+1</sub> -> ·id |
| I<sub>2</sub>    | E<sub>n+1</sub> -> id·                                                                                                                                                           |
| I<sub>3</sub>    | E -> E<sub>1</sub>· <br> E<sub>1</sub> -> E<sub>1</sub>·θ<sub>1</sub>E<sub>2</sub>                                                                                               |
| I<sub>4</sub>    | E<sub>1</sub> -> E<sub>2</sub>· <br> E<sub>2</sub> -> E<sub>2</sub>·θ<sub>2</sub>E<sub>3</sub>                                                                                   |
| ...              | ...                                                                                                                                                                              |
| I<sub>n+2</sub>  | E<sub>n-1</sub> -> E<sub>n</sub>· <br> E<sub>n</sub> -> E<sub>n</sub>·θ<sub>n</sub>E<sub>n+1</sub>                                                                               |
| I<sub>n+3</sub>  | E<sub>n</sub> -> E<sub>n+1</sub>·                                                                                                                                                |
| I<sub>n+4</sub>  | E<sub>n+1</sub> -> (E<sub>1</sub>·) <br> E<sub>1</sub> -> E<sub>1</sub>·θ<sub>1</sub>E<sub>2</sub>                                                                               |
| I<sub>n+5</sub>  | E<sub>1</sub> -> E<sub>1</sub>θ<sub>1</sub>·E<sub>2</sub> <br> ... <br> E<sub>n+1</sub> -> ·(E<sub>1</sub>) <br> E<sub>n+1</sub> -> ·id                                          |
| I<sub>n+6</sub>  | E<sub>2</sub> -> E<sub>2</sub>θ<sub>2</sub>·E<sub>3</sub> <br> ... <br> E<sub>n+1</sub> -> ·(E<sub>1</sub>) <br> E<sub>n+1</sub> -> ·id                                          |
| ...              | ...                                                                                                                                                                              |
| I<sub>2n+4</sub> | E<sub>n</sun> -> E<sub>n</sub>θ<sub>n</sub>·E<sub>n+1</sub> <br> E<sub>n+1</sub> -> ·(E<sub>1</sub>) <br> E<sub>n+1</sub> -> ·id                                                 |
| I<sub>2n+5</sub> | E<sub>n+1</sub> -> (E<sub>1</sub>)·                                                                                                                                              |
| I<sub>2n+6</sub> | E<sub>1</sub> -> E<sub>1</sub>θ<sub>1</sub>E<sub>2</sub>· <br> E<sub>2</sub> -> E<sub>2</sub>·θ<sub>2</sub>E<sub>3</sub>                                                         |
| ...              | ...                                                                                                                                                                              |
| I<sub>3n+5</sub> | E<sub>n</sub> -> E<sub>n</sub>θ<sub>n</sub>E<sub>n+1</sub>·                                                                                                                      |

| LR(0) state | θ<sub>1</sub> | θ<sub>2</sub> | ... | θ<sub>n-1</sub> | θ<sub>n</sub> | (   | )     | id  | $     | E<sub>1</sub> | E<sub>2</sub> | ... | E<sub>n</sub> | E<sub>n+1</sub> |
| ----------- | ------------- | ------------- | --- | --------------- | ------------- | --- | ----- | --- | ----  | ------------- | ------------- | ... | ------------- | --------------- |
| 0           |               |               |     |                 |               | s1  |       | s2  |       | 3             | 4             | ... | n+2           | n+3             |
| 1           |               |               |     |                 |               | s1  |       | s2  |       | n+4           | 4             | ... | n+2           | n+3             |
| 2           | r2n+2         | r2n+2         | ... | r2n+2           | r2n+2         |     | r2n+2 |     | r2n+2 |               |               | ... |               |                 |
| 3           | sn+5          |               |     |                 |               |     |       |     | acc   |               |               | ... |               |                 |
| 4           | r2            | sn+6          | ... |                 |               |     | r2    |     | r2    |               |               | ... |               |                 |
| ...         | ...           | ...           | ... | ...             | ...           | ... | ...   | ... | ...   | ...           | ...           | ... | ...           | ...             |
| n+2         | r2n-2         | r2n-2         | ... | r2n-2           | s2n+4         |     | r2n-2 |     | r2n-2 |               |               |     |               |                 |
| n+3         | r2n           | r2n           | ... | r2n             | r2n           |     | r2n   |     | r2n   |               |               | ... |               |                 |
| n+4         | sn+5          |               | ... |                 |               |     | s2n+5 |     |       |               |               | ... |               |                 |
| n+5         |               |               | ... |                 |               | s1  |       | s2  |       |               | 2n+6          | ... | n+2           | n+3             |
| n+6         |               |               | ... |                 |               | s1  |       | s2  |       |               |               | ... |               |                 |
| ...         | ...           | ...           | ... | ...             | ...           | ... | ...   | ... | ...   | ...           | ...           | ... | ...           | ...             |
| 2n+4        |               |               | ... |                 |               | s1  |       | s2  |       |               |               | ... |               | 3n+5            |
| 2n+5        | r2n+1         | r2n+1         | ... | r2n+1           | r2n+1         |     | r2n+1 |     | r2n+1 |               |               | ... |               |                 |
| 2n+6        | r1            | sn+6          | ... |                 |               |     | r1    |     | r1    |               |               | ... |               |                 |
| 3n+5        | r2n-1         | r2n-1         | ... | r2n-1           | r2n-1         |     | r2n-1 |     | r2n-1 |               |               | ... |               |                 |

e)

The ambiguous grammar uses `O(n)` less states and `O(n^2)` less entries for
the parsing table than the unambiguous grammar. Thus, use of ambiguous
expression grammars with resolutions for conflicts saves space and runtime.

