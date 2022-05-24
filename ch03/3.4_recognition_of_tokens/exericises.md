# Recognition of Tokens

## Exericise 3.4.9 *Fibonacci strings*

### d)

Show that the failure function for any <img src="https://i.upmath.me/svg/s_n" alt="s_n" /> can be expressed by
<img src="https://i.upmath.me/svg/f(1)%20%3D%20f(2)%20%3D%200" alt="f(1) = f(2) = 0" />, and for
<img src="https://i.upmath.me/svg/2%20%3C%20j%20%5Cle%20%7Cs_n%7C" alt="2 &lt; j \le |s_n|" />, <img src="https://i.upmath.me/svg/f(j)" alt="f(j)" /> is
<img src="https://i.upmath.me/svg/j%20-%20%7Cs_%7Bk%20-%201%7D%7C" alt="j - |s_{k - 1}|" />, where <img src="https://i.upmath.me/svg/k" alt="k" /> is the largest integer such
that <img src="https://i.upmath.me/svg/%7Cs_k%7C%20%5Cle%20j%20%2B%201%20" alt="|s_k| \le j + 1 " />.

**Lemma 1:** <img src="https://i.upmath.me/svg/s_n%20s_%7Bn%20-%201%7D" alt="s_n s_{n - 1}" /> and <img src="https://i.upmath.me/svg/s_%7Bn%20-%201%7D%20s_n" alt="s_{n - 1} s_n" /> only differ in the last two characters.

**Proof of Lemma 1:** Obviously, <img src="https://i.upmath.me/svg/s_2%20s_1" alt="s_2 s_1" /> and <img src="https://i.upmath.me/svg/s_1%20s_2" alt="s_1 s_2" /> differ in the last two characters.
Assume <img src="https://i.upmath.me/svg/s_%7Bn%20-%201%7D%20s_%7Bn%20-%202%7D" alt="s_{n - 1} s_{n - 2}" /> and <img src="https://i.upmath.me/svg/s_%7Bn%20-%202%7D%20s_%7Bn%20-%201%7D" alt="s_{n - 2} s_{n - 1}" /> differ in the last two characters.

<img src="https://i.upmath.me/svg/s_n%20s_%7Bn%20-%201%7D%20%3D%20s_%7Bn%20-%201%7D%20s_%7Bn%20-%202%7D%20s_%7Bn%20-%201%7D" alt="s_n s_{n - 1} = s_{n - 1} s_{n - 2} s_{n - 1}" />

<img src="https://i.upmath.me/svg/%24s_%7Bn%20-%201%7D%20s_n%20%3D%20s_%7Bn%20-%201%7D%20s_%7Bn%20-%201%7D%20s_%7Bn%20-%202%7D" alt="$s_{n - 1} s_n = s_{n - 1} s_{n - 1} s_{n - 2}" />

Then <img src="https://i.upmath.me/svg/s_n%20s_%7Bn%20-%201%7D" alt="s_n s_{n - 1}" /> and <img src="https://i.upmath.me/svg/s_%7Bn%20-%201%7D%20s_n" alt="s_{n - 1} s_n" /> only differ in the last two characters.
To be exact, the last characters are either <img src="https://i.upmath.me/svg/a%20b" alt="a b" /> or <img src="https://i.upmath.me/svg/b%20a" alt="b a" />.

**Proof**

For string <img src="https://i.upmath.me/svg/s_n" alt="s_n" />, assume <img src="https://i.upmath.me/svg/f(j)%20%3D%20j%20-%20%7Cs_%7B%20k%20-%201%7D%7C" alt="f(j) = j - |s_{ k - 1}|" />, where <img src="https://i.upmath.me/svg/k" alt="k" />
is the largest integer such that <img src="https://i.upmath.me/svg/%7Cs_k%7C%20%5Cle%20j%20%2B%201" alt="|s_k| \le j + 1" />.
We get

<img src="https://i.upmath.me/svg/%7Cs_%7Bn%20-%201%7D%7C%20-%201%20%5Cle%20%20j%20%3C%20%7Cs_n%7C%20-%201" alt="|s_{n - 1}| - 1 \le  j &lt; |s_n| - 1" />

<img src="https://i.upmath.me/svg/f(j)%20%3D%20j%20-%20%7Cs_%7Bn%20-%202%7D%7C" alt="f(j) = j - |s_{n - 2}|" />

<img src="https://i.upmath.me/svg/%7Cs_%7Bn%20-%203%7D%7C%20-%201%20%5Cle%20f(j)%20%3C%20%7Cs_%7Bn%20-%201%7D%7C%20-%201" alt="|s_{n - 3}| - 1 \le f(j) &lt; |s_{n - 1}| - 1" />

We know <img src="https://i.upmath.me/svg/s_n%20%3D%20s_%7Bn%20-%202%7D%20s_%7Bn%20-%203%7D%20s_%7Bn%20-%202%7D" alt="s_n = s_{n - 2} s_{n - 3} s_{n - 2}" />.
Let <img src="https://i.upmath.me/svg/k%20%3D%20%7Cs_n%7C%20-%202" alt="k = |s_n| - 2" />, then <img src="https://i.upmath.me/svg/f(k)%20%3D%20%7Cs_%7Bn%20-%201%7D%7C%20-%202" alt="f(k) = |s_{n - 1}| - 2" />.
According to Lemma 1, we get

<img src="https://i.upmath.me/svg/%0As%5Bf(k)%20%2B%201%5D%0A%3D%20s%5B%7Cs_%7Bn%20-%201%7D%7C%20-%201%5D%0A%5Cne%20s%5B%7Cs_n%7C%20-%201%5D%0A%3D%20s%5Bk%20%2B%201%5D%0A" alt="
s[f(k) + 1]
= s[|s_{n - 1}| - 1]
\ne s[|s_n| - 1]
= s[k + 1]
" />

<img src="https://i.upmath.me/svg/%0Af(f(k))%0A%3D%20f(%7Cs_%7Bn%20-%201%7D%7C%20-%202)%0A%3D%20%7Cs_%7Bn%20-%201%7D%7C%20-%202%20-%20%7Cs_%7Bn%20-%203%7D%7C%0A%3D%20%7Cs_%7Bn%20-%202%7D%7C%20-%202%0A" alt="
f(f(k))
= f(|s_{n - 1}| - 2)
= |s_{n - 1}| - 2 - |s_{n - 3}|
= |s_{n - 2}| - 2
" />

<img src="https://i.upmath.me/svg/%0As%5Bf(f(k))%20%2B%201%5D%0A%3D%20s%5B%7Cs_%7Bn%20-%202%7D%7C%20-%201%5D%0A%3D%20s%5B%7Cs_n%7C%20-%20%7Cs_%7Bn%20-%201%7D%7C%20-%201%5D%0A%3D%20s%5Bk%20-%20%7Cs_%7Bn%20-%201%7D%7C%20%2B%201%5D%0A" alt="
s[f(f(k)) + 1]
= s[|s_{n - 2}| - 1]
= s[|s_n| - |s_{n - 1}| - 1]
= s[k - |s_{n - 1}| + 1]
" />

So for <img src="https://i.upmath.me/svg/%7Cs_n%7C%20-%201%20%5Cle%20j%20%3C%20%7Cs_%7Bn%20%2B%201%7D%7C%20-%201" alt="|s_n| - 1 \le j &lt; |s_{n + 1}| - 1" />,
<img src="https://i.upmath.me/svg/f(j)%20%3D%20j%20-%20%7Cs_%7Bn%20-%201%7D%7C" alt="f(j) = j - |s_{n - 1}|" />. When <img src="https://i.upmath.me/svg/n%20%3D%205" alt="n = 5" /> and
<img src="https://i.upmath.me/svg/3%20%5Cle%20j%20%3C%204" alt="3 \le j &lt; 4" />, the assumption is correct. There the proof is complete.

### e)

In the KMP algorithm, what is the largest number of consecutive applications of the failure
function, when we try to determine whether keyword <img src="https://i.upmath.me/svg/s_k" alt="s_k" /> appears in text string <img src="https://i.upmath.me/svg/s_%7Bk%20%2B%201%7D" alt="s_{k + 1}" />?

1) For <img src="https://i.upmath.me/svg/j%20%5Cin%20%5B%7Cs_n%7C%20-%203%2C%20%7Cs_n%7C%20-%202%5D" alt="j \in [|s_n| - 3, |s_n| - 2]" /> and <img src="https://i.upmath.me/svg/5%20%5Cle%20n%20%5Cle%20k%20%2B%201" alt="5 \le n \le k + 1" />, if <img src="https://i.upmath.me/svg/t%5Bi%20%2B%201%5D%20%5Cne%20s%5Bj%20%2B%201%5D" alt="t[i + 1] \ne s[j + 1]" />,
then <img src="https://i.upmath.me/svg/t%5Bi%20%2B%201%5D%20%3D%20s%5Bf(j)%20%2B%201%5D" alt="t[i + 1] = s[f(j) + 1]" />. There is one application of the failure function.

2) For <img src="https://i.upmath.me/svg/j%20%3D%20%7Cs_n%7C%20-%201" alt="j = |s_n| - 1" /> and <img src="https://i.upmath.me/svg/3%20%5Cle%20n%20%5Cle%20k%20%2B%201" alt="3 \le n \le k + 1" />, if <img src="https://i.upmath.me/svg/t%5Bi%20%2B%201%5D%20%5Cne%20s%5Bj%20%2B%201%5D" alt="t[i + 1] \ne s[j + 1]" />,
since

<img src="https://i.upmath.me/svg/s%5Bj%20%2B%201%5D%20%3D%20s%5Bf%5E*(j)%20%2B%201%5D" alt="s[j + 1] = s[f^*(j) + 1]" />

then

<img src="https://i.upmath.me/svg/t%5Bi%20%2B%201%5D%20%5Cne%20s%5Bf%5E*(j)%20%2B%201%5D" alt="t[i + 1] \ne s[f^*(j) + 1]" />

We know

<img src="https://i.upmath.me/svg/f(j)%20%3D%20j%20-%20%7Cs_%7Bn%20-%201%7D%7C%20%3D%20%7Cs_%7Bn%20-%202%7D%7C%20-%201" alt="f(j) = j - |s_{n - 1}| = |s_{n - 2}| - 1" />

<img src="https://i.upmath.me/svg/f(f(j))%20%3D%20f(j)%20-%20%7Cs_%7Bn%20-%203%7D%7C%20%3D%20%7Cs_%7Bn%20-%204%7D%7C%20-%201" alt="f(f(j)) = f(j) - |s_{n - 3}| = |s_{n - 4}| - 1" />

We will apply the failure function <img src="https://i.upmath.me/svg/%5Clfloor%20%5Cfrac%7Bn%20-%201%7D%7B2%7D%20%5Crfloor" alt="\lfloor \frac{n - 1}{2} \rfloor" /> times.

Therefore, the largest number of consecutive application of the failure function is
<img src="https://i.upmath.me/svg/%5Clfloor%20%5Cfrac%7Bk%20-%201%7D%7B2%7D%20%5Crfloor" alt="\lfloor \frac{k - 1}{2} \rfloor" />.
