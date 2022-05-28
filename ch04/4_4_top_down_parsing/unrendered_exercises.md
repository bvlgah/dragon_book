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

