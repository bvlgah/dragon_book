# Top-down Parsing

## 4.4.1

For each of the following grammars, devise predictive parsers and show the parsing tables. You may left-factor and/or eliminate left-recursion from your grammars first.

a)

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%200T%20%5C%5C%0AT%20%26%20%5Crightarrow%20%26%200T1%20%5C%20%7C%20%5C%201%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; 0T \\
T &amp; \rightarrow &amp; 0T1 \ | \ 1
\end{array}
" />

| Non-terminal     | 0                     | 1                   | $ |
| ---------------- | --------------------- | ------------------- | - |
| <img src="https://i.upmath.me/svg/S" alt="S" />            | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%200T" alt="S \rightarrow 0T" />  |                     |   |
| <img src="https://i.upmath.me/svg/T" alt="T" />            | <img src="https://i.upmath.me/svg/T%20%5Crightarrow%200T1" alt="T \rightarrow 0T1" /> | <img src="https://i.upmath.me/svg/T%20%5Crightarrow%201" alt="T \rightarrow 1" /> |   |

b)

| Non-terminal | +                     | *                     | a                   | $ |
| ------------ | --------------------- | --------------------- | ------------------- | - |
| <img src="https://i.upmath.me/svg/S" alt="S" />        | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20%2BSS" alt="S \rightarrow +SS" /> | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20*SS" alt="S \rightarrow *SS" /> | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20a" alt="S \rightarrow a" /> |   |

c)

<img src="https://i.upmath.me/svg/S%20%5Crightarrow%20(S)SS%20%5C%20%7C%20%5C%20%5Cepsilon" alt="S \rightarrow (S)SS \ | \ \epsilon" />

| Non-terminal | (                       | ) | $                          |
| ------------ | ----------------------- | - | -------------------------- |
| <img src="https://i.upmath.me/svg/S" alt="S" />        | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20(S)SS" alt="S \rightarrow (S)SS" /> |   | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20%5Cepsilon" alt="S \rightarrow \epsilon" /> |

d)

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%20(S)S'%20%5C%20%7C%20%5C%20aS'%20%5C%5C%0AS'%20%26%20%5Crightarrow%20%26%20%2BSS'%20%5C%20%7C%20%5C%20SS'%20%5C%20%7C%20%5C%20*S'%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; (S)S' \ | \ aS' \\
S' &amp; \rightarrow &amp; +SS' \ | \ SS' \ | \ *S'
\end{array}
" />

| Non-terminal | (                       | ) | a                     | +                      | *                      | $ |
| ------------ | ----------------------- | - | --------------------- | ---------------------- | ---------------------- | - |
| <img src="https://i.upmath.me/svg/S" alt="S" />        | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20(S)S'" alt="S \rightarrow (S)S'" /> |   | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20aS'" alt="S \rightarrow aS'" /> |                        |                        |   |
| <img src="https://i.upmath.me/svg/S'" alt="S'" />       |                         |   |                       | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20%2BSS'" alt="S \rightarrow +SS'" /> | <img src="https://i.upmath.me/svg/S'%20%5Crightarrow%20*S'" alt="S' \rightarrow *S'" /> |   |

e)

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%20(L)%20%5C%20%7C%20%5C%20a%20%5C%5C%0AL%20%26%20%5Crightarrow%20%26%20(L)L'%20%5C%20%7C%20%5C%20aL'%20%5C%5C%0AL'%20%26%20%5Crightarrow%20%26%20%2C%20SL'%20%5C%20%7C%20%5C%20%5Cepsilon%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; (L) \ | \ a \\
L &amp; \rightarrow &amp; (L)L' \ | \ aL' \\
L' &amp; \rightarrow &amp; , SL' \ | \ \epsilon
\end{array}
" />

| Non-terminal | (                       | ) | a                     | ,                       | $                           |
| ------------ | ----------------------- | - | --------------------- | ----------------------- | --------------------------- |
| <img src="https://i.upmath.me/svg/S" alt="S" />        | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20(L)" alt="S \rightarrow (L)" />   |   | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20a" alt="S \rightarrow a" />   |                         |                             |
| <img src="https://i.upmath.me/svg/L" alt="L" />        | <img src="https://i.upmath.me/svg/L%20%5Crightarrow%20(L)L'" alt="L \rightarrow (L)L'" /> |   | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20aL'" alt="S \rightarrow aL'" /> |                         |                             |
| <img src="https://i.upmath.me/svg/L'" alt="L'" />       |                         |   |                       | <img src="https://i.upmath.me/svg/L'%20%5Crightarrow%20%2CSL'" alt="L' \rightarrow ,SL'" /> | <img src="https://i.upmath.me/svg/L'%20%5Crightarrow%20%5Cepsilon" alt="L' \rightarrow \epsilon" /> |

f)

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0Abexpr%20%26%20%5Crightarrow%20%26%20bterm%20%5C%20bexpr'%20%5C%5C%0Abexpr'%20%26%20%5Crightarrow%20%26%20%7B%5Cbf%20or%7D%20%5C%20bterm%20%5C%20bexpr'%20%5C%20%7C%20%5C%20%5Cepsilon%20%5C%5C%0Abterm%20%26%20%5Crightarrow%20%26%20bfactor%20%5C%20bterm'%20%5C%5C%0Abterm'%20%26%20%5Crightarrow%20%26%20%7B%5Cbf%20and%7D%20%5C%20bfactor%20%5C%20bterm'%20%5C%20%7C%20%5C%20%5Cepsilon%20%5C%5C%0Abfactor%20%26%20%5Crightarrow%20%26%20%7B%5Cbf%20not%7D%20%5C%20bfactor%20%5C%20%7C%20%5C%20(bexpr)%20%5C%20%7C%20%5C%20%7B%5Cbf%20true%7D%20%5C%20%7C%20%5C%20%7B%5Cbf%20false%7D%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
bexpr &amp; \rightarrow &amp; bterm \ bexpr' \\
bexpr' &amp; \rightarrow &amp; {\bf or} \ bterm \ bexpr' \ | \ \epsilon \\
bterm &amp; \rightarrow &amp; bfactor \ bterm' \\
bterm' &amp; \rightarrow &amp; {\bf and} \ bfactor \ bterm' \ | \ \epsilon \\
bfactor &amp; \rightarrow &amp; {\bf not} \ bfactor \ | \ (bexpr) \ | \ {\bf true} \ | \ {\bf false}
\end{array}
" />

| Non-terminal | true                | false                | not                        | and                              | or                            | (                 | ) | $           |
| ------------ | ------------------- | -------------------- | -------------------------- | -------------------------------- | ----------------------------- | ----------------- | - | ----------- |
| bexpr        |                     |                      |                            |                                  |                               |                   |   |             |
| bexpr'       |                     |                      |                            |                                  | bexpr' -> **or** bterm bexpr' |                   |   | bexpr' -> ε |
| bterm        |                     |                      |                            |                                  |                               |                   |   |             |
| bterm'       |                     |                      |                            | bterm' -> **and** bfactor bterm' |                               |                   |   | bterm' -> ε |
| bfactor      | bfactor -> **true** | bfactor -> **false** | bfactor -> **not** bfactor |                                  |                               | bfactor -> (bexpr) |   |             |

## 4.4.2

Is it possible, by modifying the grammar in anyway, to con-struct a predictive parser for the language of Exercise 4.2.1 (post x expressions with operand a)?

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%20aS'%20%5C%5C%0AS'%20%26%20%5Crightarrow%20%26%20aS'TS'%20%7C%20%5C%20%5Cepsilon%20%5C%5C%0AT%20%26%20%5Crightarrow%20%26%20%2BS'%20%5C%20%7C%20%5C%20*S'%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; aS' \\
S' &amp; \rightarrow &amp; aS'TS' | \ \epsilon \\
T &amp; \rightarrow &amp; +S' \ | \ *S'
\end{array}
" />

| Non-terminal | a                        | +                     | *                     | $                           |
| ------------ | ------------------------ | --------------------- | --------------------- | --------------------------- |
| <img src="https://i.upmath.me/svg/S" alt="S" />        | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20aS'" alt="S \rightarrow aS'" />    |                       |                       |                             |
| <img src="https://i.upmath.me/svg/S'" alt="S'" />       | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20aS'TS'" alt="S \rightarrow aS'TS'" /> |                       |                       | <img src="https://i.upmath.me/svg/S'%20%5Crightarrow%20%5Cepsilon" alt="S' \rightarrow \epsilon" /> |
| <img src="https://i.upmath.me/svg/T" alt="T" />        |                          | <img src="https://i.upmath.me/svg/T%20%5Crightarrow%20%2BS'" alt="T \rightarrow +S'" /> | <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20*S'" alt="S \rightarrow *S'" /> |                             |

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

For <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20aSbS%20%5C%20%7C%20%5C%20bSaS%20%5C%20%7C%20%5C%20%5Cepsilon" alt="S \rightarrow aSbS \ | \ bSaS \ | \ \epsilon" />, create two new rules <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20ab" alt="S \rightarrow ab" />
and <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20ba" alt="S \rightarrow ba" />, and remove <img src="https://i.upmath.me/svg/S%20%5Crightarrow%20%5Cepsilon" alt="S \rightarrow \epsilon" />. Therefore, the original grammar
is equivalent to:

<img src="https://i.upmath.me/svg/S%20%5Crightarrow%20aSbS%20%5C%20%7C%20%5C%20bSaS%20%5C%20%7C%20%5C%20ab%20%5C%20%7C%20%5C%20ba" alt="S \rightarrow aSbS \ | \ bSaS \ | \ ab \ | \ ba" />

I also found a similar [algorithm](http://www.cs.um.edu.mt/gordon.pace/Research/Software/Relic/Transformations/RG/epsilon-free.html) on the Internet.

## 4.4.7

A *single production* is a production whose body is a single nonterminal, i.e., a production of the
form <img src="https://i.upmath.me/svg/A%20%5Crightarrow%20B" alt="A \rightarrow B" />.

a)

First eliminate ε-productions, and remove cyclic rules like <img src="https://i.upmath.me/svg/A%20%5Crightarrow%20A" alt="A \rightarrow A" /> (if any),
finally replace any single non-terminal with its rules until no single production.

b)

Firstly, expand <img src="https://i.upmath.me/svg/T%20%5Crightarrow%20F" alt="T \rightarrow F" /> to <img src="https://i.upmath.me/svg/T%20%5Crightarrow%20(E)%20%5C%20%7C%20%5C%20%7B%5Cbf%20id%7D" alt="T \rightarrow (E) \ | \ {\bf id}" />. Then, expand
<img src="https://i.upmath.me/svg/E%20%5Crightarrow%20T" alt="E \rightarrow T" /> to <img src="https://i.upmath.me/svg/E%20%5Crightarrow%20T*F%20%5C%20%7C%20%5C%20(E)%20%5C%20%7C%20%5C%20%7B%5Cbf%20id%7D" alt="E \rightarrow T*F \ | \ (E) \ | \ {\bf id}" />.

After conversion, the grammar is as follows:

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AE%20%26%20%5Crightarrow%20%26%20E%20%2B%20T%20%5C%20%7C%20%5C%20T%20*%20F%20%5C%20%7C%20%5C%20(E)%20%5C%20%7C%20%5C%20id%20%5C%5C%0AT%20%26%20%5Crightarrow%20%26%20T%20*%20F%20%5C%20%7C%20%5C%20(E)%20%5C%20%7C%20%5C%20id%20%5C%5C%0AF%20%26%20%5Crightarrow%20%26%20(E)%20%5C%20%7C%20%5C%20id%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
E &amp; \rightarrow &amp; E + T \ | \ T * F \ | \ (E) \ | \ id \\
T &amp; \rightarrow &amp; T * F \ | \ (E) \ | \ id \\
F &amp; \rightarrow &amp; (E) \ | \ id
\end{array}
" />

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

<img src="https://i.upmath.me/svg/A%20%5Crightarrow%20%5Calpha%20%5Cbeta" alt="A \rightarrow \alpha \beta" />

Then add to G' the following rules:

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AB%20%26%20%5Crightarrow%20%26%20%5Calpha%20%5C%5C%0AC%20%26%20%5Crightarrow%20%26%20%5Cbeta%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
B &amp; \rightarrow &amp; \alpha \\
C &amp; \rightarrow &amp; \beta
\end{array}
" />

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

