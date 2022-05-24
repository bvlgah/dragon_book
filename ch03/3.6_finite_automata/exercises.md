# Finite Automata

## Exericse 3.6.1

Figure 3.19 in the exercises of Section 3.4 computes the failure function for the KMP algorithm.
Show how, given that failure function, we can construct, from a keyword <img src="https://i.upmath.me/svg/b_1%20b_2%20%5Ccdots%20b_n" alt="b_1 b_2 \cdots b_n" />
an <img src="https://i.upmath.me/svg/n%20%2B%201" alt="n + 1" />-state DFA that recognizes <img src="https://i.upmath.me/svg/.%5E*%20b_1%20b_2%20%5Ccdots%20b_n" alt=".^* b_1 b_2 \cdots b_n" />, where the dot stands for
"any character". Moreover, this DFA can be constructed in <img src="https://i.upmath.me/svg/O(n)" alt="O(n)" /> time.

**Solution**

The main step is to construct the transition function from the failure function as follows:

<img src="https://i.upmath.me/svg/%0Atransition(s_i%2C%20c)%20%3D%20%0A%5Cleft%5C%7B%0A%5Cbegin%7Barray%7D%7Bll%7D%0A%20%20%20%20s_%7Bi%20%2B%201%7D%20%26%20%5Cmbox%7Bif%20%7D%20i%20%3C%20n%20%5C%20and%20%5C%20c%20%3D%20b_%7Bi%20%2B%201%7D%20%5C%5C%0A%20%20%20%20transition(f%5Bi%5D%2C%20c)%20%26%20%5Cmbox%7Bif%20%7D%20i%20%3D%20n%20%5C%20or%20%5C%20c%20%5Cne%20b_%7Bi%20%2B%201%7D%0A%5Cend%7Barray%7D%0A%5Cright%0A" alt="
transition(s_i, c) = 
\left\{
\begin{array}{ll}
    s_{i + 1} &amp; \mbox{if } i &lt; n \ and \ c = b_{i + 1} \\
    transition(f[i], c) &amp; \mbox{if } i = n \ or \ c \ne b_{i + 1}
\end{array}
\right
" />

