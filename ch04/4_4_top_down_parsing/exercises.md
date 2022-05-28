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

