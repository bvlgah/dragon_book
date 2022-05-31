# Top-down Parsing

## 4.4.1

For each of the following grammars, devise predictive parsers and show the parsing tables. You may left-factor and/or eliminate left-recursion from your grammars first.

a)

$$
\begin{array}{lll}
S & \rightarrow & 0T \\
T & \rightarrow & 0T1 \ | \ 1
\end{array}
$$

| Non-terminal     | 0                     | 1                   | $ |
| ---------------- | --------------------- | ------------------- | - |
| $$S$$            | $$S \rightarrow 0T$$  |                     |   |
| $$T$$            | $$T \rightarrow 0T1$$ | $$T \rightarrow 1$$ |   |

b)

| Non-terminal | +                     | *                     | a                   | $ |
| ------------ | --------------------- | --------------------- | ------------------- | - |
| $$S$$        | $$S \rightarrow +SS$$ | $$S \rightarrow *SS$$ | $$S \rightarrow a$$ |   |

c)

$$S \rightarrow (S)SS \ | \ \epsilon$$

| Non-terminal | (                       | ) | $                          |
| ------------ | ----------------------- | - | -------------------------- |
| $$S$$        | $$S \rightarrow (S)SS$$ |   | $$S \rightarrow \epsilon$$ |

d)

$$
\begin{array}{lll}
S & \rightarrow & (S)S' \ | \ aS' \\
S' & \rightarrow & +SS' \ | \ SS' \ | \ *S'
\end{array}
$$

| Non-terminal | (                       | ) | a                     | +                      | *                      | $ |
| ------------ | ----------------------- | - | --------------------- | ---------------------- | ---------------------- | - |
| $$S$$        | $$S \rightarrow (S)S'$$ |   | $$S \rightarrow aS'$$ |                        |                        |   |
| $$S'$$       |                         |   |                       | $$S \rightarrow +SS'$$ | $$S' \rightarrow *S'$$ |   |

e)

$$
\begin{array}{lll}
S & \rightarrow & (L) \ | \ a \\
L & \rightarrow & (L)L' \ | \ aL' \\
L' & \rightarrow & , SL' \ | \ \epsilon
\end{array}
$$

| Non-terminal | (                       | ) | a                     | ,                       | $                           |
| ------------ | ----------------------- | - | --------------------- | ----------------------- | --------------------------- |
| $$S$$        | $$S \rightarrow (L)$$   |   | $$S \rightarrow a$$   |                         |                             |
| $$L$$        | $$L \rightarrow (L)L'$$ |   | $$S \rightarrow aL'$$ |                         |                             |
| $$L'$$       |                         |   |                       | $$L' \rightarrow ,SL'$$ | $$L' \rightarrow \epsilon$$ |

f)

$$
\begin{array}{lll}
bexpr & \rightarrow & bterm \ bexpr' \\
bexpr' & \rightarrow & {\bf or} \ bterm \ bexpr' \ | \ \epsilon \\
bterm & \rightarrow & bfactor \ bterm' \\
bterm' & \rightarrow & {\bf and} \ bfactor \ bterm' \ | \ \epsilon \\
bfactor & \rightarrow & {\bf not} \ bfactor \ | \ (bexpr) \ | \ {\bf true} \ | \ {\bf false}
\end{array}
$$

| Non-terminal | true                | false                | not                        | and                              | or                            | (                 | ) | $           |
| ------------ | ------------------- | -------------------- | -------------------------- | -------------------------------- | ----------------------------- | ----------------- | - | ----------- |
| bexpr        |                     |                      |                            |                                  |                               |                   |   |             |
| bexpr'       |                     |                      |                            |                                  | bexpr' -> **or** bterm bexpr' |                   |   | bexpr' -> ε |
| bterm        |                     |                      |                            |                                  |                               |                   |   |             |
| bterm'       |                     |                      |                            | bterm' -> **and** bfactor bterm' |                               |                   |   | bterm' -> ε |
| bfactor      | bfactor -> **true** | bfactor -> **false** | bfactor -> **not** bfactor |                                  |                               | bfactor -> (bexpr) |   |             |

## 4.4.2

Is it possible, by modifying the grammar in anyway, to con-struct a predictive parser for the language of Exercise 4.2.1 (post x expressions with operand a)?

$$
\begin{array}{lll}
S & \rightarrow & aS' \\
S' & \rightarrow & aS'TS' | \ \epsilon \\
T & \rightarrow & +S' \ | \ *S'
\end{array}
$$

| Non-terminal | a                        | +                     | *                     | $                           |
| ------------ | ------------------------ | --------------------- | --------------------- | --------------------------- |
| $$S$$        | $$S \rightarrow aS'$$    |                       |                       |                             |
| $$S'$$       | $$S \rightarrow aS'TS'$$ |                       |                       | $$S' \rightarrow \epsilon$$ |
| $$T$$        |                          | $$T \rightarrow +S'$$ | $$S \rightarrow *S'$$ |                             |

## 4.4.3

Compute FIRST and FOLLOW for the grammar of Exercise 4.2.1.

| Symbol | FIRST | FOLLOW       |
| ------ | ----- | ------------ |
| S      | {a}   | {$ a + *}    |

## 4.4.4

Compute FIRST and FOLLOW for each of the grammars of Exercise 4.2.2.

a)

| Symbol | FIRST | FOLLOW |
| ------ | ----- | ------ |
| S      | {0}   | {1 $}  |

b)

| Symbol | FIRST   | FOLLOW    |
| ------ | ------- | --------- |
| S      | {+ * a} | {+ * a $} |

c)

| Symbol | FIRST | FOLLOW |
| ------ | ----- | ------ |
| S      | {(}   | {) $}  |

d)

| Symbol | FIRST | FOLLOW       |
| ------ | ----- | ------------ |
| S      | {a (} | {a + ( ) *$} |

e)

| Symbol | FIRST | FOLLOW  |
| ------ | ----- | ------- |
| S      | {( a} | {, $}   |
| L      | {( a} | {) , $} |

f)

| Symbol | FIRST | FOLLOW  |
| ------ | ----- | ------- |
| S      | {a b} | {a b $} |

g)

| Symbol  | FIRST                          | FOLLOW               |
| ------- | ------------------------------ | -------------------- |
| bexpr   | {**not** ( **true** **false**} | {**and** **or** ) $} |
| bterm   | {**not** ( **true** **false**} | {**and** **or** ) $} |
| bfactor | {**not** ( **true** **false**} | {**and** **or** ) $} |

## 4.4.6

A grammar is  *ε-free* if no production body is ε (called an *ε-production*).

a)

For every production rule α which has an ε body, create new rules by copying original rules where α appears and removing α,
and remove every ε rule.

b)

For $$S \rightarrow aSbS \ | \ bSaS \ | \ \epsilon$$, create two new rules $$S \rightarrow ab$$
and $$S \rightarrow ba$$, and remove $$S \rightarrow \epsilon$$. Therefore, the original grammar
is equivalent to:

$$S \rightarrow aSbS \ | \ bSaS \ | \ ab \ | \ ba$$

I also found a similar [algorithm](http://www.cs.um.edu.mt/gordon.pace/Research/Software/Relic/Transformations/RG/epsilon-free.html) on the Internet.

## 4.4.7

A *single production* is a production whose body is a single nonterminal, i.e., a production of the
form $$A \rightarrow B$$.

a)

First eliminate ε-productions, and remove cyclic rules like $$A \rightarrow A$$ (if any),
finally replace any single non-terminal with its rules until no single production.

b)

Firstly, expand $$T \rightarrow F$$ to $$T \rightarrow (E) \ | \ {\bf id}$$. Then, expand
$$E \rightarrow T$$ to $$E \rightarrow T*F \ | \ (E) \ | \ {\bf id}$$.

After conversion, the grammar is as follows:

$$
\begin{array}{lll}
E & \rightarrow & E + T \ | \ T * F \ | \ (E) \ | \ id \\
T & \rightarrow & T * F \ | \ (E) \ | \ id \\
F & \rightarrow & (E) \ | \ id
\end{array}
$$

c)

Since the converted grammar has no single production, any non-terminal A derives αAβ where α and β
is any grammar symbol. Because there is no ε production, α and β never derive ε. Therefore, the
grammar has no cycles.

## 4.4.8

Show how to convert any grammar into a CNF grammar for the same language (with the possible exception of the empty string | no CNF grammar can generate ε).

**Solution**:

First of all, convert any grammar G into an equivalent grammar G' with no single
productions. For any production rule in G' that is not a CNF, it can be
represented as:

$$A \rightarrow \alpha \beta$$

Then add to G' the following rules:

$$
\begin{array}{lll}
B & \rightarrow & \alpha \\
C & \rightarrow & \beta
\end{array}
$$

Do the above step until the grammar is a CNF grammar.

## 4.4.9

Let S(i, j) is the set of non-terminals that generate the string ai...aj.
And let M(BC) = A, where B and C are non-terminals of the grammar G and if
there is a rule in G, A -> BC.

```
for s in 0 to n - 1
    for i in 1 to n - s
        S(i, i + s) = M(S(i, i)S(i + 1, i + s)) ∪ ... ∪ M(S(i, i + s - 1)S(i + s, i + s))
```

Whether a1a2...an is in the language can be determined by checking whether the
start symbol is in T1n. If it is, the string is in the language.

## 4.4.10

For every element x of the set of table entry Tij, it also stores how Tij is produced. That is, it records `Tij = Tik Tkj`. Having this information, a parse
tree can be easily built. The running of constructing the tree for `Tij` is
`t(Tij) = t(Tik) + t(Tkj) + O(1)`. Then for T1n, `t(T1n) = t(T11) + t(T22) + ... + t(Tnn) + O(n) = O(n)`.

## 4.4.11

I would like to share some general ideas. For every `Tij` and all non-terminals, compute the least number of corrections to make a non-terminal derive the sub-string
`ai...aj`. I think it is a very costly algorithm.

## 4.4.12

a) Build an error-correcting predictive parsing table for the grammar.

| Symbol   | FIRST              | FOLLOW         |
| -------- | ------------------ | -------------- |
| stmt     | {if while begin s} | {; end else $} |
| stmtTail | {else}             | {; end else $} |
| list     | {if while begin s} | {end}          |
| listTail | {;}                | {end}          |

The parse table is as follows:

| Non-Terminal | if                              | e | then | while                   | do | begin                  | end           | s                     | else                  | ;                  | $             |
| ------------ | ------------------------------- | - | ---- | ----------------------- | -- | ---------------------- | ------------- | --------------------- | --------------------- | ------------------ | ------------- |
| stmt         | stmt -> if e then stmt stmtTail |   |      | stmt -> while e do stmt |    | stmt -> begin list end | synch         | stmt -> s             | synch                 | synch              | synch         |
| stmtTail     | synch                           |   |      | synch                   |    | synch                  | stmtTail -> ε | synch                 | stmtTail -> else stmt | stmtTail -> ε      | stmtTail -> ε |
| list         | list -> stmt listTail           |   |      | list -> stmt listTail   |    | list -> stmt listTail  | synch         | list -> stmt listTail |                       |                    |               |
| listTail     | synch                           |   |      | synch                   |    | synch                  | listTail -> ε |                       |                       | listTail -> ;list  | synch         |

b) Show the behavior of your parser on the following inputs:

(i) if e then s ; if e then s end

| Stack                     | Input                           | Remark                     |
| ------------------------: | ------------------------------: | -------------------------- |
| stmt $                    | if e then s ; if e then s end $ | if is in FIRST(stmt)       |
| if e then stmt stmtTail $ | if e then s ; if e then s end $ |                            |
| e then stmt stmtTail $    | e then s ; if e then s end $    |                            |
| then stmt stmtTail $      | then s ; if e then s end $      |                            |
| stmt stmtTail $           | s ; if e then s end $           | s is in FIRST(stmt)        |
| s stmtTail $              | s ; if e then s end $           |                            |
| stmtTail $                | ; if e then s end $             | ; is in FIRST(stmt)        |
| $                         | ; if e then s end $             | error, skip all left input |

(ii) while e do begin s ; if e then s ; end

| Stack                         | Input                                    | Remark                  |
| ----------------------------: | ---------------------------------------: | ----------------------- |
| stmt $                        | while e do begin s ; if e then s ; end $ | while is in FIRST(stmt) |
| while e do stmt $             | while e do begin s ; if e then s ; end $ |                         |
| e do stmt $                   | e do begin s ; if e then s ; end $       |                         |
| do stmt $                     | do begin s ; if e then s ; end $         |                         |
| stmt $                        | begin s ; if e then s ; end $            | begin is in FIRST(stmt) |
| begin list end $              | begin s ; if e then s ; end $            |                         |
| list end $                    | s ; if e then s ; end $                  | s is in FIRST(list)     |
| stmt listTail end $           | s ; if e then s ; end $                  | s is in FIRST(stmt)     |
| s listTail end $              | s ; if e then s ; end $                  |                         |
| listTail end $                | ; if e then s ; end $                    | ; is in FIRST(listTail) |
| ; list end $                  | ; if e then s ; end $                    |                         |
| list end $                    | if e then s ; end $                      | if is in FIRST(list)    |
| stmt listTail end $           | if e then s ; end $                      | if is in FIRST(stmt)    |
| if e then stmt stmtTail end $ | if e then s ; end $                      |                         |
| e then stmt stmtTail end $    | e then s ; end $                         |                         |
| then stmt stmtTail end $      | then s ; end $                           |                         |
| stmt stmtTail end $           | s ; end $                                | s is in FIRST(stmt)     |
| s stmtTail end $              | s ; end $                                |                         |
| stmtTail end $                | ; end $                                  | ; is in FIRST(stmtTail) |
| end $                         | ; end $                                  | error, pop(;)           |
| end $                         | end $                                    |                         |
| $                             | $                                        |                         |

