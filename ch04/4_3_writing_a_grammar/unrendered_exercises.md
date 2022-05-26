# Writing a Grammar

## 4.3.1

a) Left factor this grammar.

Doing left factoring makes no difference.

b) Does left factoring make the grammar suitable for top-down parsing?

No. Since left factoring does not change the original grammar, and
it is left recursive.

c) In addition to left factoring, eliminate left recursion from the original grammar.

$$
\begin{array}{lll}
rexpr & \rightarrow & rterm \ rexpr' \\
rexpr' & \rightarrow & + \ rterm \ rexpr' \ | \ \epsilon \\
rterm & \rightarrow & rfactor \ rterm \ | \ rfactor \\
rfactor & \rightarrow & rprimary \ rfactor' \\
rfactor' & \rightarrow & * \ rfactor' \ | \ \epsilon \\
rprimary & \rightarrow & {\bf a} \ | \ {\bf b}
\end{array}
$$

d) Is the resulting grammar suitable for top-down parsing?

No. The resulting grammar is ambiguous.

