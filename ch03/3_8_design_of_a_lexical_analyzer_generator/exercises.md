# Design of a Lexical Analyzer Generator

## 3.8.4

Design an algorithm to recognize Lex-lookahead patterns of the form r1/r2,
where r1 and r2 are regular expressions.

General ideas:

- Assume there are multiple patterns using the lookahead operator.
- Treat r1/r2 like r1r2.
- Make the accepting state (s2) of r1 one larger than that (s1) of r1r2.
- For the matching based on NFAs, go back and find the last set of states
  containing s2 in the sequence.
- For the matching based on DFAs, store the sets in the DFA that s2 maps to,
  then go back to find the last state mapped from s2.

