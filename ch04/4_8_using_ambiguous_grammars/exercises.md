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
| ----------- | ------------- | ------------- | --- | --------------- | ------------- | --- | ----- | --- | ----  | ------------- | ------------- | --- | ------------- | --------------- |
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

## 4.8.2

a)

| Symbol | First              | Follow         |
| ------ | ------------------ | -------------- |
| stmt   | {if while begin s} | {else end ; $} |
| list   | {if while begin s} | {end ;}        |

| LR(1) set      | LR(1) items                                                                                                                                                                                                                                                                                                     |
| -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| I<sub>0</sub>  | [S -> ·stmt, $] <br> [stmt -> ·if e then stmt, $] <br> [stmt -> ·if e then stmt else stmt, $] <br> [stmt -> ·while e do stmt, $] <br> [stmt -> ·begin list end, $] <br> [stmt -> ·s, $]                                                                                                                         |
| I<sub>1</sub>  | [stmt -> if ·e then stmt, $] <br> [stmt -> if ·e then stmt else stmt, $]                                                                                                                                                                                                                                        |
| I<sub>2</sub>  | [stmt -> while ·e do stmt, $]                                                                                                                                                                                                                                                                                   |
| I<sub>3</sub>  | [stmt -> begin ·list end, $] <br> [list -> ·list; stmt, end/;] <br> [list -> ·stmt, end/;]  <br> [stmt -> ·if e then stmt, end/;] <br> [stmt -> ·if e then stmt else stmt, end/;] <br> [stmt -> ·while e do stmt, end/;] <br> [stmt -> ·begin list end, end/;] <br> [stmt -> ·s, end/;]                         |
| I<sub>4</sub>  | [stmt -> s·, $]                                                                                                                                                                                                                                                                                                 |
| I<sub>5</sub>  | [stmt -> if e ·then stmt, $] <br> [stmt -> if e ·then stmt else stmt, $]                                                                                                                                                                                                                                        |
| I<sub>6</sub>  | [stmt -> while e ·do stmt, $]                                                                                                                                                                                                                                                                                   |
| I<sub>7</sub>  | [stmt -> if ·e then stmt, end/;] <br> [stmt -> if ·e then stmt else stmt, end/;]                                                                                                                                                                                                                                |
| I<sub>8</sub>  | [stmt -> while ·e do stmt, end/;]                                                                                                                                                                                                                                                                               |
| I<sub>9</sub>  | [stmt -> begin ·list end, end/;] <br> [list -> ·list; stmt, end/;] <br> [list -> ·stmt, end/;]  <br> [stmt -> ·if e then stmt, end/;] <br> [stmt -> ·if e then stmt else stmt, end/;] <br> [stmt -> ·while e do stmt, end/;] <br> [stmt -> ·begin list end, end/;] <br> [stmt -> ·s, end/;]                     |
| I<sub>10</sub> | [stmt -> s·, end/;]                                                                                                                                                                                                                                                                                             |
| I<sub>11</sub> | [stmt -> begin list ·end, $] <br> [list -> list·; stmt, end/;]                                                                                                                                                                                                                                                  |
| I<sub>12</sub> | [list -> stmt·, end/;]                                                                                                                                                                                                                                                                                          |
| I<sub>13</sub> | [stmt -> if e then ·stmt, $] <br> [stmt -> if e then ·stmt else stmt, $] <br> [stmt -> ·if e then stmt, else/$] <br> [stmt -> ·if e then stmt else stmt, else/$] <br> [stmt -> ·while e do stmt, else/$] <br> [stmt -> ·begin list end, else/$] <br> [stmt -> ·s, else/$]                                       |
| I<sub>14</sub> | [stmt -> while e do ·stmt, $] <br> [stmt -> ·if e then stmt, $] <br> [stmt -> ·if e then stmt else stmt, $] <br> [stmt -> ·while e do stmt, $] <br> [stmt -> ·begin list end, $] <br> [stmt -> ·s, $]                                                                                                           |
| I<sub>15</sub> | [stmt -> if e ·then stmt, end/;] <br> [stmt -> if e ·then stmt else stmt, end/;]                                                                                                                                                                                                                                |
| I<sub>16</sub> | [stmt -> while e ·do stmt, end/;]                                                                                                                                                                                                                                                                               |
| I<sub>17</sub> | [stmt -> begin list ·end, end/;] <br> [list -> list·; stmt, end/;]                                                                                                                                                                                                                                              |
| I<sub>18</sub> | [stmt -> begin list end·, $]                                                                                                                                                                                                                                                                                    |
| I<sub>19</sub> | [list -> list; ·stmt, end/;] <br> [stmt -> ·if e then stmt, end/;] <br> [stmt -> ·if e then stmt else stmt, end/;] <br> [stmt -> ·while e do stmt, end/;] <br> [stmt -> ·begin list end, end/;] <br> [stmt -> ·s, end/;]                                                                                        |
| I<sub>20</sub> | [stmt -> if ·e then stmt, else/$] <br> [stmt -> if ·e then stmt else stmt, else/$]                                                                                                                                                                                                                              |
| I<sub>21</sub> | [stmt -> while ·e do stmt, else/$]                                                                                                                                                                                                                                                                              |
| I<sub>22</sub> | [stmt -> begin ·list end, else/$] <br> [list -> ·list; stmt, end/;] <br> [list -> ·stmt, end/;]  <br> [stmt -> ·if e then stmt, end/;] <br> [stmt -> ·if e then stmt else stmt, end/;] <br> [stmt -> ·while e do stmt, end/;] <br> [stmt -> ·begin list end, end/;] <br> [stmt -> ·s, end/;]                    |
| I<sub>23</sub> | [stmt -> s·, else/$]                                                                                                                                                                                                                                                                                            |
| I<sub>24</sub> | [stmt -> if e then stmt·, $] <br> [stmt -> if e then stmt ·else stmt, $]                                                                                                                                                                                                                                        |
| I<sub>25</sub> | [stmt -> while e do stmt·, $]                                                                                                                                                                                                                                                                                   |
| I<sub>26</sub> | [stmt -> if e then ·stmt, end/;] <br> [stmt -> if e then ·stmt else stmt, end/;] <br> [stmt -> ·if e then stmt, else/end/;] <br> [stmt -> ·if e then stmt else stmt, else/end/;] <br> [stmt -> ·while e do stmt, else/end/;] <br> [stmt -> ·begin list end, else/end/;] <br> [stmt -> ·s, else/end/;]           |
| I<sub>27</sub> | [stmt -> while e do ·stmt, end/;] <br> [stmt -> ·if e then stmt, end/;] <br> [stmt -> ·if e then stmt else stmt, end/;] <br> [stmt -> ·while e do stmt, end/;] <br> [stmt -> ·begin list end, end/;] <br> [stmt -> ·s, end/;]                                                                                   |
| I<sub>28</sub> | [stmt -> begin list end·, end/;]                                                                                                                                                                                                                                                                                |
| I<sub>29</sub> | [list -> list; stmt·, end/;]                                                                                                                                                                                                                                                                                    |
| I<sub>30</sub> | [stmt -> begin list end·, else/$]                                                                                                                                                                                                                                                                               |
| I<sub>31</sub> | [list -> list; ·stmt, else/$] <br> [stmt -> ·if e then stmt, else/$] <br> [stmt -> ·if e then stmt else stmt, else/$] <br> [stmt -> ·while e do stmt, else/$] <br> [stmt -> ·begin list end, else/$] <br> [stmt -> ·s, else/$]                                                                                  |
| I<sub>32</sub> | [stmt -> while e ·do stmt, else/$]                                                                                                                                                                                                                                                                              |
| I<sub>33</sub> | [stmt -> begin list ·end, else/$] <br> [list -> list·; stmt, end/;]                                                                                                                                                                                                                                             |
| I<sub>34</sub> | [stmt -> if e then stmt else ·stmt, $] <br> [stmt -> ·if e then stmt, $] <br> [stmt -> ·if e then stmt else stmt, $] <br> [stmt -> ·while e do stmt, $] <br> [stmt -> ·begin list end, $] <br> [stmt -> ·s, $]                                                                                                  |
| I<sub>35</sub> | [stmt -> if ·e then stmt, else/end/;] <br> [stmt -> if ·e then stmt else stmt, else/end/;]                                                                                                                                                                                                                      |
| I<sub>36</sub> | [stmt -> while ·e do stmt, else/end/;]                                                                                                                                                                                                                                                                          |
| I<sub>37</sub> | [stmt -> begin ·list end, else/end/;] <br> [list -> ·list; stmt, end/;] <br> [list -> ·stmt, end/;]  <br> [stmt -> ·if e then stmt, end/;] <br> [stmt -> ·if e then stmt else stmt, end/;] <br> [stmt -> ·while e do stmt, end/;] <br> [stmt -> ·begin list end, end/;] <br> [stmt -> ·s, end/;]                |
| I<sub>38</sub> | [stmt -> s·, else/end/;]                                                                                                                                                                                                                                                                                        |
| I<sub>39</sub> | [stmt -> if e then stmt·, end/;] <br> [stmt -> if e then stmt ·else stmt, end/;]                                                                                                                                                                                                                                |
| I<sub>40</sub> | [stmt -> while e do stmt·, end/;]                                                                                                                                                                                                                                                                               |
| I<sub>41</sub> | [list -> list; stmt·, else/$]                                                                                                                                                                                                                                                                                   |
| I<sub>42</sub> | [stmt -> while e do ·stmt, else/$] <br> [stmt -> ·if e then stmt, else/$] <br> [stmt -> ·if e then stmt else stmt, else/$] <br> [stmt -> ·while e do stmt, else/$] <br> [stmt -> ·begin list end, else/$] <br> [stmt -> ·s, else/$]                                                                             |
| I<sub>43</sub> | [stmt -> if e then stmt else stmt·, $]                                                                                                                                                                                                                                                                          |
| I<sub>44</sub> | [stmt -> if e ·then stmt, else/end/;] <br> [stmt -> if e ·then stmt else stmt, else/end/;]                                                                                                                                                                                                                      |
| I<sub>45</sub> | [stmt -> while e ·do stmt, else/end/;]                                                                                                                                                                                                                                                                          |
| I<sub>46</sub> | [stmt -> begin list ·end, else/end/;] <br> [list -> list·; stmt, end/;]                                                                                                                                                                                                                                         |
| I<sub>47</sub> | [stmt -> if e then stmt else ·stmt, end/;] <br> [stmt -> ·if e then stmt, end/;] <br> [stmt -> ·if e then stmt else stmt, end/;] <br> [stmt -> ·while e do stmt, end/;] <br> [stmt -> ·begin list end, end/;] <br> [stmt -> ·s, end/;]                                                                          |
| I<sub>48</sub> | [stmt -> while e do stmt·, else/$]                                                                                                                                                                                                                                                                              |
| I<sub>49</sub> | [stmt -> if e then ·stmt, else/end/;] <br> [stmt -> if e then ·stmt else stmt, else/end/;] <br> [stmt -> ·if e then stmt, else/end/;] <br> [stmt -> ·if e then stmt else stmt, else/end/;] <br> [stmt -> ·while e do stmt, else/end/;] <br> [stmt -> ·begin list end, else/end/;] <br> [stmt -> ·s, else/end/;] |
| I<sub>50</sub> | [stmt -> while e do ·stmt, else/end/;] <br> [stmt -> ·if e then stmt, else/end/;] <br> [stmt -> ·if e then stmt else stmt, else/end/;] <br> [stmt -> ·while e do stmt, else/end/;] <br> [stmt -> ·begin list end, else/end/;] <br> [stmt -> ·s, else/end/;]                                                     |
| I<sub>51</sub> | [stmt -> begin list end·, else/end/;]                                                                                                                                                                                                                                                                           |
| I<sub>52</sub> | [stmt -> if e then stmt else stmt·, end/;]                                                                                                                                                                                                                                                                      |
| I<sub>53</sub> | [stmt -> if e then stmt·, else/end/;] <br> [stmt -> if e then stmt ·else stmt, else/end/;]                                                                                                                                                                                                                      |
| I<sub>54</sub> | [stmt -> while e do stmt·, else/end/;]                                                                                                                                                                                                                                                                          |
| I<sub>55</sub> | [stmt -> if e then stmt else ·stmt, else/end/;] <br> [stmt -> ·if e then stmt, else/end/;] <br> [stmt -> ·if e then stmt else stmt, else/end/;] <br> [stmt -> ·while e do stmt, else/end/;] <br> [stmt -> ·begin list end, else/end/;] <br> [stmt -> ·s, else/end/;]                                            |
| I<sub>56</sub> | [stmt -> if e then stmt else stmt·, else/end/;]                                                                                                                                                                                                                                                                 |

There is a shift/reduce conflict that state `53` can shift or reduce
by `stmt -> if e then stmt` on input `else`. We can resolve it by
always associating `else` with the last `then`, which means state
`53` shifts on input `else`.

| LR(1) state | if  | e   | then | else | while | do  | begin | end | s   | ;   | $   | list | stmt |
| ----------- | --- | --- | ---- | ---- | ----- | --- | ----- | --- | --- | --- | --- | ---- | ---- |
| 0           | s1  |     |      |      | s2    |     | s3    |     | s4  |     |     |      |      |
| 1           |     | s5  |      |      |       |     |       |     |     |     |     |      |      |
| 2           |     | s6  |      |      |       |     |       |     |     |     |     |      |      |
| 3           | s7  |     |      |      | s8    |     | s9    |     | s10 |     |     | 11   | 12   |
| 4           |     |     |      |      |       |     |       |     |     |     | r5  |      |      |
| 5           |     |     | s13  |      |       |     |       |     |     |     |     |      |      |
| 6           |     |     |      |      |       | s14 |       |     |     |     |     |      |      |
| 7           |     | s15 |      |      |       |     |       |     |     |     |     |      |      |
| 8           |     | s16 |      |      |       |     |       |     |     |     |     |      |      |
| 9           | s7  |     |      |      | s8    |     | s9    |     | s10 |     |     | 17   | 12   |
| 10          |     |     |      |      |       |     |       | r5  |     | r5  |     |      |      |
| 11          |     |     |      |      |       |     |       | s18 |     | s19 |     |      |      |
| 12          |     |     |      |      |       |     |       | r7  |     | r7  |     |      |      |
| 13          | s20 |     |      |      | s21   |     | s22   |     | s23 |     |     |      | 24   |
| 14          | s1  |     |      |      | s2    |     | s3    |     | s4  |     |     |      | 25   |
| 15          |     |     | s26  |      |       |     |       |     |     |     |     |      |      |
| 16          |     |     |      |      |       | s27 |       |     |     |     |     |      |      |
| 17          |     |     |      |      |       |     |       | s28 |     | s19 |     |      |      |
| 18          |     |     |      |      |       |     |       |     |     |     | r4  |      |      |
| 19          | s7  |     |      |      | s8    |     | s9    |     | s10 |     |     |      | 29   |
| 20          |     |     |      |      |       |     |       | s30 |     | s31 |     |      |      |
| 21          |     | s32 |      |      |       |     |       |     |     |     |     |      |      |
| 22          | s7  |     |      |      | s8    |     | s9    |     | s10 |     |     | 33   | 12   |
| 23          |     |     |      | r5   |       |     |       |     |     |     | r5  |      |      |
| 24          |     |     |      | s34  |       |     |       |     |     |     | r1  |      |      |
| 25          |     |     |      |      |       |     |       |     |     |     | r3  |      |      |
| 26          | s35 |     |      |      | s36   |     | s37   |     | s38 |     |     |      | 39   |
| 27          | s7  |     |      |      | s8    |     | s9    |     | s10 |     |     |      | 40   |
| 28          |     |     |      |      |       |     |       | r4  |     | r4  |     |      |      |
| 29          |     |     |      |      |       |     |       | r6  |     | r6  |     |      |      |
| 30          |     |     |      | r4   |       |     |       |     |     |     | r4  |      |      |
| 31          | s20 |     |      |      | s21   |     | s22   |     | s23 |     |     |      | 41   |
| 32          |     |     |      |      |       | s42 |       |     |     |     |     |      |      |
| 33          |     |     |      |      |       |     |       | s30 |     | s19 |     |      |      |
| 34          | s1  |     |      |      | s2    |     | s3    |     | s4  |     |     |      | 43   |
| 35          |     | s44 |      |      |       |     |       |     |     |     |     |      |      |
| 36          |     | s45 |      |      |       |     |       |     |     |     |     |      |      |
| 37          | s7  |     |      |      | s8    |     | s9    |     | s10 |     |     | 46   | 12   |
| 38          |     |     |      | r5   |       |     |       | r5  |     | r5  |     |      |      |
| 39          |     |     |      | s47  |       |     |       | r1  |     | r1  |     |      |      |
| 40          |     |     |      |      |       |     |       | r3  |     | r3  |     |      |      |
| 41          |     |     |      | r6   |       |     |       |     |     |     | r6  |      |      |
| 42          | s20 |     |      |      | s21   |     | s22   |     | s23 |     |     |      | 48   |
| 43          |     |     |      |      |       |     |       |     |     |     | r2  |      |      |
| 44          |     |     | s49  |      |       |     |       |     |     |     |     |      |      |
| 45          |     |     |      |      |       | s50 |       |     |     |     |     |      |      |
| 46          |     |     |      |      |       |     |       | s51 |     | s19 |     |      |      |
| 47          | s7  |     |      |      | s8    |     | s9    |     | s10 |     |     |      | 52   |
| 48          |     |     |      | r3   |       |     |       |     |     |     | r3  |      |      |
| 49          | s35 |     |      |      | s36   |     | s37   |     | s38 |     |     |      | 53   |
| 50          | s35 |     |      |      | s36   |     | s37   |     | s38 |     |     |      | 54   |
| 51          |     |     |      | r4   |       |     |       | r4  |     | r4  |     |      |      |
| 52          |     |     |      |      |       |     |       | r2  |     | r2  |     |      |      |
| 53          |     |     |      | s55  |       |     |       | r1  |     | r1  |     |      |      |
| 54          |     |     |      | r3   |       |     |       | r3  |     | r3  |     |      |      |
| 55          | s35 |     |      |      | s36   |     | s37   |     | s38 |     |     |      | 56   |
| 56          |     |     |      | r2   |       |     |       | r2  |     | r2  |     |      |      |

