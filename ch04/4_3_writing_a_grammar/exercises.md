# Writing a Grammar

## 4.3.1

a) Left factor this grammar.

Doing left factoring makes no difference.

b) Does left factoring make the grammar suitable for top-down parsing?

No. Since left factoring does not change the original grammar, and
it is left recursive.

c) In addition to left factoring, eliminate left recursion from the original grammar.

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0Arexpr%20%26%20%5Crightarrow%20%26%20rterm%20%5C%20rexpr'%20%5C%5C%0Arexpr'%20%26%20%5Crightarrow%20%26%20%2B%20%5C%20rterm%20%5C%20rexpr'%20%5C%20%7C%20%5C%20%5Cepsilon%20%5C%5C%0Arterm%20%26%20%5Crightarrow%20%26%20rfactor%20%5C%20rterm%20%5C%20%7C%20%5C%20rfactor%20%5C%5C%0Arfactor%20%26%20%5Crightarrow%20%26%20rprimary%20%5C%20rfactor'%20%5C%5C%0Arfactor'%20%26%20%5Crightarrow%20%26%20*%20%5C%20rfactor'%20%5C%20%7C%20%5C%20%5Cepsilon%20%5C%5C%0Arprimary%20%26%20%5Crightarrow%20%26%20%7B%5Cbf%20a%7D%20%5C%20%7C%20%5C%20%7B%5Cbf%20b%7D%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
rexpr &amp; \rightarrow &amp; rterm \ rexpr' \\
rexpr' &amp; \rightarrow &amp; + \ rterm \ rexpr' \ | \ \epsilon \\
rterm &amp; \rightarrow &amp; rfactor \ rterm \ | \ rfactor \\
rfactor &amp; \rightarrow &amp; rprimary \ rfactor' \\
rfactor' &amp; \rightarrow &amp; * \ rfactor' \ | \ \epsilon \\
rprimary &amp; \rightarrow &amp; {\bf a} \ | \ {\bf b}
\end{array}
" />

d) Is the resulting grammar suitable for top-down parsing?

No. The resulting grammar is ambiguous.

## 4.3.2

a)

After left factoring:

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%20SST%20%7C%20%5C%20a%20%5C%5C%0AT%20%26%20%5Crightarrow%20%26%20%2B%20%5C%20%7C%20%5C%20*%0A%5Cend%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; SST | \ a \\
T &amp; \rightarrow &amp; + \ | \ *
\end
" />

The above grammar is not suitable for top-down parsing because it is left recursive.

After eliminating left recursion:

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%20a%20%5C%20S'%20%5C%5C%0AS'%20%26%20%5Crightarrow%20%26%20STS'%20%5C%20%7C%20%5C%20%5Cepsilon%20%5C%5C%0AT%20%26%20%5Crightarrow%20%26%20%2B%20%5C%20%7C%20%5C%20*%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; a \ S' \\
S' &amp; \rightarrow &amp; STS' \ | \ \epsilon \\
T &amp; \rightarrow &amp; + \ | \ *
\end{array}
" />

Then, this one is suitable for top-down parsing.

b)

After left factoring:

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%200%20%5C%20T%20%5C%5C%0AT%20%26%20%5Crightarrow%20%26%20S%20%5C%201%20%5C%20%7C%20%5C%201%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; 0 \ T \\
T &amp; \rightarrow &amp; S \ 1 \ | \ 1
\end{array}
" />

This grammar is suitable for top-down parsing.

After left recursion elimination:

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%200%20%5C%20T%20%5C%5C%0AT%20%26%20%5Crightarrow%20%26%200%20%5C%20T%20%5C%201%20%5C%20%7C%20%5C%201%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; 0 \ T \\
T &amp; \rightarrow &amp; 0 \ T \ 1 \ | \ 1
\end{array}
" />

The above one is suitable for top-down parsing.

c)

The grammar does not change after left factoring. And it is not suitable for
top-down parsing because it is left recursive.

After eliminating left recursion:

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%20(S)SS%20%5C%20%7C%20%5C%20%5Cepsilon%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; (S)SS \ | \ \epsilon
\end{array}
" />

It is suitable for top-down parsing.

d)

Left factoring cannot be applied to the original grammar. It is not suitable for
top-down parsing because it is left recursive.

After left recursion elimination:

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0AS%20%26%20%5Crightarrow%20%26%20(L)%20%5C%20%7C%20%5C%20a%20%5C%5C%0AL%20%26%20%5Crightarrow%20%26%20(L)L'%20%5C%20%7C%20%5C%20aL'%20%5C%5C%0AL'%20%26%20%5Crightarrow%20%26%20%2C%20SL'%20%5C%20%7C%20%5C%20%5Cepsilon%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
S &amp; \rightarrow &amp; (L) \ | \ a \\
L &amp; \rightarrow &amp; (L)L' \ | \ aL' \\
L' &amp; \rightarrow &amp; , SL' \ | \ \epsilon
\end{array}
" />

The above grammar is suitable for top-down parsing.

e)

Left factoring makes no difference. Besides, it is not suitable
for top-down parsing since it is left recursive.

After eliminating left recursion:

<img src="https://i.upmath.me/svg/%0A%5Cbegin%7Barray%7D%7Blll%7D%0Abexpr%20%26%20%5Crightarrow%20%26%20bterm%20%5C%20bexpr'%20%5C%5C%0Abexpr'%20%26%20%5Crightarrow%20%26%20%7B%5Cbf%20or%7D%20%5C%20bterm%20%5C%20bexpr'%20%5C%20%7C%20%5C%20%5Cepsilon%20%5C%5C%0Abterm%20%26%20%5Crightarrow%20%26%20bfactor%20%5C%20bterm'%20%5C%5C%0Abterm'%20%26%20%5Crightarrow%20%26%20%7B%5Cbf%20and%7D%20%5C%20bfactor%20%5C%20bterm'%20%5C%20%7C%20%5C%20%5Cepsilon%20%5C%5C%0Abfactor%20%26%20%5Crightarrow%20%26%20%7B%5Cbf%20not%7D%20%5C%20bfactor%20%5C%20%7C%20%5C%20(bexpr)%20%5C%20%7C%20%5C%20%7B%5Cbf%20true%7D%20%5C%20%7C%20%5C%20%7B%5Cbf%20false%7D%0A%5Cend%7Barray%7D%0A" alt="
\begin{array}{lll}
bexpr &amp; \rightarrow &amp; bterm \ bexpr' \\
bexpr' &amp; \rightarrow &amp; {\bf or} \ bterm \ bexpr' \ | \ \epsilon \\
bterm &amp; \rightarrow &amp; bfactor \ bterm' \\
bterm' &amp; \rightarrow &amp; {\bf and} \ bfactor \ bterm' \ | \ \epsilon \\
bfactor &amp; \rightarrow &amp; {\bf not} \ bfactor \ | \ (bexpr) \ | \ {\bf true} \ | \ {\bf false}
\end{array}
" />

It is suitable for top-down parsing.

## 4.3.3

The grammar is still ambiguous because the following two parse tree can be
generated from the same sentence:

![4.3.3 parse tree a](assets/4_3_3_parse_tree_a.png)

![4.3.3 parse tree b](assets/4_3_3_parse_tree_b.png)

