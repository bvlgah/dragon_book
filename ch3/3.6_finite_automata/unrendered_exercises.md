# Finite Automata

## Exericse 3.6.1

Figure 3.19 in the exercises of Section 3.4 computes the failure function for the KMP algorithm.
Show how, given that failure function, we can construct, from a keyword $$b_1 b_2 \cdots b_n$$
an $$n + 1$$-state DFA that recognizes $$.^* b_1 b_2 \cdots b_n$$, where the dot stands for
"any character". Moreover, this DFA can be constructed in $$O(n)$$ time.

**Solution**

The main step is to construct the transition function from the failure function as follows:

$$
transition(s_i, c) = 
\left\{
\begin{array}{ll}
    s_{i + 1} & \mbox{if } i < n \ and \ c = b_{i + 1} \\
    transition(f[i], c) & \mbox{if } i = n \ or \ c \ne b_{i + 1}
\end{array}
\right
$$

