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

