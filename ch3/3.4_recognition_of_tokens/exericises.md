# Recognition of Tokens

## Exericise 3.4.9 *Fibonacci strings*

### d)

Show that the failure function for any <img src="https://i.upmath.me/svg/s_n" alt="s_n" /> can be expressed by
<img src="https://i.upmath.me/svg/f%20%5Cleft(%201%20%5Cright)%20%3D%20f%20%5Cleft(%202%20%5Cright)%20%3D%200" alt="f \left( 1 \right) = f \left( 2 \right) = 0" />, and for
<img src="https://i.upmath.me/svg/2%20%3C%20j%20%5Cle%20%5Cleft%7C%20s_n%20%5Cright%7C" alt="2 &lt; j \le \left| s_n \right|" />, <img src="https://i.upmath.me/svg/f%20%5Cleft(%20j%20%5Cright)" alt="f \left( j \right)" /> is
<img src="https://i.upmath.me/svg/j%20-%20%5Cleft%7C%20s_%7Bk%20-%201%7D%20%5Cright%7C" alt="j - \left| s_{k - 1} \right|" />, where <img src="https://i.upmath.me/svg/k" alt="k" /> is the largest integer such
that <img src="https://i.upmath.me/svg/%5Cleft%7C%20s_k%20%5Cright%7C%20%5Cle%20j%20%2B%201%20" alt="\left| s_k \right| \le j + 1 " />.

**Lemma 1:** <img src="https://i.upmath.me/svg/s_n%20s_%7Bn%20-%201%7D" alt="s_n s_{n - 1}" /> and <img src="https://i.upmath.me/svg/s_%7Bn%20-%201%7D%20s_n" alt="s_{n - 1} s_n" /> only differ in the last two characters.

**Proof of Lemma 1:** Obviously, <img src="https://i.upmath.me/svg/s_2%20s_1" alt="s_2 s_1" /> and <img src="https://i.upmath.me/svg/s_1%20s_2" alt="s_1 s_2" /> differ in the last two characters.
Assume <img src="https://i.upmath.me/svg/s_%7Bn%20-%201%7D%20s_%7Bn%20-%202%7D" alt="s_{n - 1} s_{n - 2}" /> and <img src="https://i.upmath.me/svg/s_%7Bn%20-%202%7D%20s_%7Bn%20-%201%7D" alt="s_{n - 2} s_{n - 1}" /> differ in the last two characters.

<img src="https://i.upmath.me/svg/s_n%20s_%7Bn%20-%201%7D%20%3D%20s_%7Bn%20-%201%7D%20s_%7Bn%20-%202%7D%20s_%7Bn%20-%201%7D" alt="s_n s_{n - 1} = s_{n - 1} s_{n - 2} s_{n - 1}" />

<img src="https://i.upmath.me/svg/%24s_%7Bn%20-%201%7D%20s_n%20%3D%20s_%7Bn%20-%201%7D%20s_%7Bn%20-%201%7D%20s_%7Bn%20-%202%7D" alt="$s_{n - 1} s_n = s_{n - 1} s_{n - 1} s_{n - 2}" />

Then <img src="https://i.upmath.me/svg/s_n%20s_%7Bn%20-%201%7D" alt="s_n s_{n - 1}" /> and <img src="https://i.upmath.me/svg/s_%7Bn%20-%201%7D%20s_n" alt="s_{n - 1} s_n" /> only differ in the last two characters.
To be exact, the last characters are either <img src="https://i.upmath.me/svg/a%20b" alt="a b" /> or <img src="https://i.upmath.me/svg/b%20a" alt="b a" />.

**Proof**

For string <img src="https://i.upmath.me/svg/s_n" alt="s_n" />, assume <img src="https://i.upmath.me/svg/f%20%5Cleft(%20j%20%5Cright)%20%3D%20j%20-%20%5Cleft%7C%20s_%7B%20k%20-%201%7D%20%5Cright%7C" alt="f \left( j \right) = j - \left| s_{ k - 1} \right|" />, where <img src="https://i.upmath.me/svg/k" alt="k" />
is the largest integer such that <img src="https://i.upmath.me/svg/%5Cleft%7C%20s_k%20%5Cright%7C%20%5Cle%20j%20%2B%201" alt="\left| s_k \right| \le j + 1" />.
We get

<img src="https://i.upmath.me/svg/%5Cleft%7C%20s_%7Bn%20-%201%7D%20%5Cright%7C%20-%201%20%5Cle%20%20j%20%3C%20%5Cleft%7C%20s_n%20%5Cright%7C%20-%201" alt="\left| s_{n - 1} \right| - 1 \le  j &lt; \left| s_n \right| - 1" />

<img src="https://i.upmath.me/svg/f%20%5Cleft(%20j%20%5Cright)%20%3D%20j%20-%20%5Cleft%7C%20s_%7Bn%20-%202%7D%20%5Cright%7C" alt="f \left( j \right) = j - \left| s_{n - 2} \right|" />

<img src="https://i.upmath.me/svg/%5Cleft%7C%20s_%7Bn%20-%203%7D%20%5Cright%7C%20-%201%20%5Cle%20f%20%5Cleft(%20j%20%5Cright)%20%3C%20%5Cleft%7C%20s_%7Bn%20-%201%7D%20%5Cright%7C%20-%201" alt="\left| s_{n - 3} \right| - 1 \le f \left( j \right) &lt; \left| s_{n - 1} \right| - 1" />

We know <img src="https://i.upmath.me/svg/s_n%20%3D%20s_%7Bn%20-%202%7D%20s_%7Bn%20-%203%7D%20s_%7Bn%20-%202%7D" alt="s_n = s_{n - 2} s_{n - 3} s_{n - 2}" />.
Let <img src="https://i.upmath.me/svg/k%20%3D%20%5Cleft%7C%20s_n%20%5Cright%7C%20-%202" alt="k = \left| s_n \right| - 2" />, then <img src="https://i.upmath.me/svg/f%20%5Cleft(%20k%20%5Cright)%20%3D%20%5Cleft%7C%20s_%7Bn%20-%201%7D%20%5Cright%7C%20-%202" alt="f \left( k \right) = \left| s_{n - 1} \right| - 2" />.
According to Lemma 1, we get

<img src="https://i.upmath.me/svg/%0As%20%5Cleft%5B%20f%20%5Cleft(%20k%20%5Cright)%20%2B%201%20%5Cright%5D%0A%3D%20s%20%5Cleft%5B%20%5Cleft%7C%20s_%7Bn%20-%201%7D%20%5Cright%7C%20-%201%20%5Cright%5D%0A%5Cne%20s%20%5Cleft%5B%20%5Cleft%7C%20s_n%20%5Cright%7C%20-%201%20%5Cright%5D%0A%3D%20s%20%5Cleft%5B%20k%20%2B%201%20%5Cright%5D%0A" alt="
s \left[ f \left( k \right) + 1 \right]
= s \left[ \left| s_{n - 1} \right| - 1 \right]
\ne s \left[ \left| s_n \right| - 1 \right]
= s \left[ k + 1 \right]
" />

<img src="https://i.upmath.me/svg/%0Af%20%5Cleft(%20f%20%5Cleft(%20k%20%5Cright)%20%5Cright)%0A%3D%20f%20%5Cleft(%20%5Cleft%7C%20s_%7Bn%20-%201%7D%20%5Cright%7C%20-%202%20%5Cright)%0A%3D%20s_%7Bn%20-%201%7D%20%5Cright%7C%20-%202%20-%20%5Cleft%7C%20s_%7Bn%20-%203%7D%20%5Cright%7C%0A%3D%20%5Cleft%7C%20s_%7Bn%20-%202%7D%20%5Cright%7C%20-%202%0A" alt="
f \left( f \left( k \right) \right)
= f \left( \left| s_{n - 1} \right| - 2 \right)
= s_{n - 1} \right| - 2 - \left| s_{n - 3} \right|
= \left| s_{n - 2} \right| - 2
" />

<img src="https://i.upmath.me/svg/%0As%20%5Cleft%5B%20f%20%5Cleft(%20f%20%5Cleft(%20k%20%5Cright)%20%5Cright)%20%2B%201%20%5Cright%5D%0A%3D%20s%20%5Cleft%5B%20%5Cleft%7C%20s_%7Bn%20-%202%7D%20%5Cright%7C%20-%201%20%5Cright%5D%0A%3D%20s%20%5Cleft%5B%20%5Cleft%7C%20s_n%20%5Cright%7C%20-%20s%20%5Cleft%7C%20s_%7Bn%20-%201%7D%20%5Cright%7C%20-%201%20%5Cright%5D%0A%3D%20s%20%5Cleft%5B%20k%20-%20%5Cleft%7C%20s_%7Bn%20-%201%7D%20%5Cright%7C%20%2B%201%20%5Cright%5D%0A" alt="
s \left[ f \left( f \left( k \right) \right) + 1 \right]
= s \left[ \left| s_{n - 2} \right| - 1 \right]
= s \left[ \left| s_n \right| - s \left| s_{n - 1} \right| - 1 \right]
= s \left[ k - \left| s_{n - 1} \right| + 1 \right]
" />

So for <img src="https://i.upmath.me/svg/%20%5Cleft%7C%20s_n%20%5Cright%7C%20-%201%20%5Cle%20j%20%3C%20%5Cleft%7C%20s_%7Bn%20%2B%201%7D%20%5Cright%7C%20-%201" alt=" \left| s_n \right| - 1 \le j &lt; \left| s_{n + 1} \right| - 1" />,
<img src="https://i.upmath.me/svg/f%20%5Cleft(%20j%20%5Cright)%20%3D%20j%20-%20%5Cleft%7C%20s_%7Bn%20-%201%7D%20%5Cright%7C" alt="f \left( j \right) = j - \left| s_{n - 1} \right|" />. When <img src="https://i.upmath.me/svg/n%20%3D%205" alt="n = 5" /> and
<img src="https://i.upmath.me/svg/%203%20%5Cle%20j%20%3C%204" alt=" 3 \le j &lt; 4" />, the assumption is correct. There the proof is complete.
