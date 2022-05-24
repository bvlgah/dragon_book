# Optimization of DFA-based Pattern Matchers

## 3.9.1

Extend the table of Fig. 3.58 to include the operators (a)? and (b)+.

| Node *n*                    | *nullable(n)* | *firstpos(n)* |
| --------------------------- | ------------- | ------------- |
| A zero-or-one node n = (a)? | true          | firstpos(a)   |
| A one-or-more node n = (b)+ | nullable(b)   | firstpos(b)   |

## 3.9.2

Use Algorithm 3.36 to convert the regular expressions of Exercise 3.7.3
directly to deterministic finite automata.

a) <img src="https://i.upmath.me/svg/(a%20%7C%20b)%5E*" alt="(a | b)^*" />

There is [a good solution](https://github.com/fool2fish/dragon-book-exercise-answers/blob/master/ch03/3.9/3.9.md#392).

b) <img src="https://i.upmath.me/svg/(a%5E*%20%7C%20b%5E*)%5E*" alt="(a^* | b^*)^*" />

This is equivalent to the above one.

c) <img src="https://i.upmath.me/svg/((%5Cepsilon%20%7C%20a)%20b%5E*)%5E*" alt="((\epsilon | a) b^*)^*" />

This is also equivalent to the first one.

d) <img src="https://i.upmath.me/svg/(a%20%7C%20b)%5E*abb(a%20%7C%20b)%5E*" alt="(a | b)^*abb(a | b)^*" />

| Position n | followpos(n)  |
| ---------- | ------------- |
| 1          | {1, 2, 3}     |
| 2          | {1, 2, 3}     |
| 3          | {4}           |
| 4          | {5}           |
| 5          | {6, 7, 8}     |
| 6          | {6, 7, 8}     |
| 7          | {6, 7, 8}     |
| 8          | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |

| State                 | a                     | b                     |
| --------------------- | --------------------- | --------------------- |
| {1, 2, 3}             | {1, 2, 3, 4}          | {1, 2, 3}             |
| {1, 2, 3, 4}          | {1, 2, 3, 4}          | {1, 2, 3, 5}          |
| {1, 2, 3, 5}          | {1, 2, 3, 4}          | {1, 2, 3, 6, 7, 8}    |
| {1, 2, 3, 6, 7, 8}    | {1, 2, 3, 4, 6, 7, 8} | {1, 2, 3, 6, 7, 8}    |
| {1, 2, 3, 4, 6, 7, 8} | {1, 2, 3, 4, 6, 7, 8} | {1, 2, 3, 5, 6, 7, 8} |
| {1, 2, 3, 5, 6, 7, 8} | {1, 2, 3, 4, 6, 7, 8} | {1, 2, 3, 6, 7, 8}    |

## 3.9.3

See [constructed DFAs](https://github.com/pjatgithub/dragon_book/blob/main/ch3/3.7_from_regular_expressions_to_automata/exercises.md#exercise-373) for Exercise 3.7.3

## 3.9.4

a) <img src="https://i.upmath.me/svg/(a%7Cb)%5E*a(a%7Cb)" alt="(a|b)^*a(a|b)" />

| Position n | followpos(n)  |
| ---------- | ------------- |
| 1          | {1, 2, 3}     |
| 2          | {1, 2, 3}     |
| 3          | {4, 5}        |
| 4          | {6}           |
| 5          | {6}           |
| 6          | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |

| State              | a                  | b            |
| ------------------ | ------------------ | ------------ |
| {1, 2, 3}          | {1, 2, 3, 4, 5}    | {1, 2, 3}    |
| {1, 2, 3, 4, 5}    | {1, 2, 3, 4, 5, 6} | {1, 2, 3, 6} |
| {1, 2, 3, 4, 5, 6} | {1, 2, 3, 4, 5, 6} | {1, 2, 3, 6} |
| {1, 2, 3, 6}       | {1, 2, 3, 4, 5}    | {1, 2, 3}    |

b) <img src="https://i.upmath.me/svg/(a%7Cb)%5E*a(a%7Cb)(a%7Cb)" alt="(a|b)^*a(a|b)(a|b)" />

| Position n | followpos(n)  |
| ---------- | ------------- |
| 1          | {1, 2, 3}     |
| 2          | {1, 2, 3}     |
| 3          | {4, 5}        |
| 4          | {6, 7}        |
| 5          | {6, 7}        |
| 6          | {8}           |
| 7          | {8}           |
| 8          | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |

| State                    | a                        | b                  |
| ------------------------ | ------------------------ | ------------------ |
| {1, 2, 3}                | {1, 2, 3, 4, 5}          | {1, 2, 3}          |
| {1, 2, 3, 4, 5}          | {1, 2, 3, 4, 5, 6, 7}    | {1, 2, 3, 6, 7}    |
| {1, 2, 3, 4, 5, 6, 7}    | {1, 2, 3, 4, 5, 6, 7, 8} | {1, 2, 3, 6, 7, 8} |
| {1, 2, 3, 6, 7}          | {1, 2, 3, 4, 5, 8}       | {1, 2, 3}          |
| {1, 2, 3, 4, 5, 6, 7, 8} | {1, 2, 3, 4, 5, 6, 7, 8} | {1, 2, 3, 6, 7, 8} |
| {1, 2, 3, 6, 7, 8}       | {1, 2, 3, 4, 5, 8}       | {1, 2, 3, 8}       |
| {1, 2, 3, 4, 5, 8}       | {1, 2, 3, 4, 5, 6, 7}    | {1, 2, 3, 6, 7}    |
| {1, 2, 3, 8}             | {1, 2, 3, 4, 5}          | {1, 2, 3}          |

c) <img src="https://i.upmath.me/svg/(a%7Cb)%5E*a(a%7Cb)(a%7Cb)(a%7Cb)" alt="(a|b)^*a(a|b)(a|b)(a|b)" />

| Position n | followpos(n)  |
| ---------- | ------------- |
| 1          | {1, 2, 3}     |
| 2          | {1, 2, 3}     |
| 3          | {4, 5}        |
| 4          | {6, 7}        |
| 5          | {6, 7}        |
| 6          | {8, 9}        |
| 7          | {8, 9}        |
| 8          | {10}          |
| 9          | {10}          |
| 10         | <img src="https://i.upmath.me/svg/%5Cemptyset" alt="\emptyset" /> |

| State                           | a                               | b                         |
| ------------------------------- | ------------------------------- | ------------------------- |
| {1, 2, 3}                       | {1, 2, 3, 4, 5}                 | {1, 2, 3}                 |
| {1, 2, 3, 4, 5}                 | {1, 2, 3, 4, 5, 6, 7}           | {1, 2, 3, 6, 7}           |
| {1, 2, 3, 4, 5, 6, 7}           | {1, 2, 3, 4, 5, 6, 7, 8, 9}     | {1, 2, 3, 6, 7, 8, 9}     |
| {1, 2, 3, 6, 7}                 | {1, 2, 3, 4, 5, 8, 9}           | {1, 2, 3, 8, 9}           |
| {1, 2, 3, 4, 5, 6, 7, 8, 9}     | {1, 2, 3, 4, 5, 6, 7, 8, 9, 10} | {1, 2, 3, 6, 7, 8, 9, 10} |
| {1, 2, 3, 6, 7, 8, 9}           | {1, 2, 3, 4, 5, 8, 9, 10}       | {1, 2, 3, 8, 9, 10}       |
| {1, 2, 3, 8, 9}                 | {1, 2, 3, 4, 5, 10}             | {1, 2, 3, 10}             |
| {1, 2, 3, 4, 5, 6, 7, 8, 9, 10} | {1, 2, 3, 4, 5, 6, 7, 8, 9, 10} | {1, 2, 3, 6, 7, 8, 9, 10} |
| {1, 2, 3, 6, 7, 8, 9, 10}       | {1, 2, 3, 4, 5, 8, 9, 10}       | {1, 2, 3, 8, 9, 10}       |
| {1, 2, 3, 4, 5, 8, 9, 10}       | {1, 2, 3, 4, 5, 6, 7, 10}       | {1, 2, 3, 6, 7, 10}       |
| {1, 2, 3, 8, 9, 10}             | {1, 2, 3, 4, 5, 10}             | {1, 2, 3, 10}             |
| {1, 2, 3, 4, 5, 10}             | {1, 2, 3, 4, 5, 6, 7}           | {1, 2, 3, 6, 7}           |
| {1, 2, 3, 10}                   | {1, 2, 3, 4, 5}                 | {1, 2, 3}                 |
| {1, 2, 3, 4, 5, 6, 7, 10}       | {1, 2, 3, 4, 5, 6, 7, 8, 9}     | {1, 2, 3, 6, 7, 8, 9}     |
| {1, 2, 3, 6, 7, 10}             | {1, 2, 3, 4, 5, 8, 9}           | {1, 2, 3, 8, 9}           |
| {1, 2, 3, 4, 5, 8, 9}           | {1, 2, 3, 4, 5, 6, 7, 10}       | {1, 2, 3, 6, 7, 10}       |

## 3.9.5

To make formal the informal claim of Example 3.25, show that any
deterministic finite automaton for the regular expression

<img src="https://i.upmath.me/svg/(a%7Cb)%5E*a(a%7Cb)(a%7Cb)%5Ccdots(a%7Cb)" alt="(a|b)^*a(a|b)(a|b)\cdots(a|b)" />

where <img src="https://i.upmath.me/svg/(a%7Cb)" alt="(a|b)" /> appears <img src="https://i.upmath.me/svg/n-1" alt="n-1" /> times at the end, must have at least <img src="https://i.upmath.me/svg/2%5En" alt="2^n" /> states.
Hint: Observe the pattern in Exercise 3.9.4. What condition regarding the history
of inputs does each state represent?

Solution:

Assume the regular expression where <img src="https://i.upmath.me/svg/(a%7Cb)" alt="(a|b)" /> appears <img src="https://i.upmath.me/svg/n-2" alt="n-2" /> times at the end has
at least <img src="https://i.upmath.me/svg/2%5E%7Bn-1%7D" alt="2^{n-1}" /> states. Consider the DFA with the minimum number of states
(Exercise 3.9.4), it has <img src="https://i.upmath.me/svg/2%5E%7Bn-2%7D" alt="2^{n-2}" /> accepting states. If there is one more <img src="https://i.upmath.me/svg/(a%7Cb)" alt="(a|b)" />
at the end, these states are not accepting states any more. But on input b, each of
these states transits to a unique accepting state. It is the same case on input a.
It is true for the base case (Exercise 3.9.4), so the regular expression has <img src="https://i.upmath.me/svg/2%5En" alt="2^n" /> states.

