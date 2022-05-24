# Recognition of Tokens

## Exericise 3.4.9 *Fibonacci strings*

### d)

Show that the failure function for any $$s_n$$ can be expressed by
$$f(1) = f(2) = 0$$, and for
$$2 < j \le |s_n|$$, $$f(j)$$ is
$$j - |s_{k - 1}|$$, where $$k$$ is the largest integer such
that $$|s_k| \le j + 1 $$.

**Lemma 1:** $$s_n s_{n - 1}$$ and $$s_{n - 1} s_n$$ only differ in the last two characters.

**Proof of Lemma 1:** Obviously, $$s_2 s_1$$ and $$s_1 s_2$$ differ in the last two characters.
Assume $$s_{n - 1} s_{n - 2}$$ and $$s_{n - 2} s_{n - 1}$$ differ in the last two characters.

$$s_n s_{n - 1} = s_{n - 1} s_{n - 2} s_{n - 1}$$

$$$s_{n - 1} s_n = s_{n - 1} s_{n - 1} s_{n - 2}$$

Then $$s_n s_{n - 1}$$ and $$s_{n - 1} s_n$$ only differ in the last two characters.
To be exact, the last characters are either $$a b$$ or $$b a$$.

**Proof**

For string $$s_n$$, assume $$f(j) = j - |s_{ k - 1}|$$, where $$k$$
is the largest integer such that $$|s_k| \le j + 1$$.
We get

$$|s_{n - 1}| - 1 \le  j < |s_n| - 1$$

$$f(j) = j - |s_{n - 2}|$$

$$|s_{n - 3}| - 1 \le f(j) < |s_{n - 1}| - 1$$

We know $$s_n = s_{n - 2} s_{n - 3} s_{n - 2}$$.
Let $$k = |s_n| - 2$$, then $$f(k) = |s_{n - 1}| - 2$$.
According to Lemma 1, we get

$$
s[f(k) + 1]
= s[|s_{n - 1}| - 1]
\ne s[|s_n| - 1]
= s[k + 1]
$$

$$
f(f(k))
= f(|s_{n - 1}| - 2)
= |s_{n - 1}| - 2 - |s_{n - 3}|
= |s_{n - 2}| - 2
$$

$$
s[f(f(k)) + 1]
= s[|s_{n - 2}| - 1]
= s[|s_n| - |s_{n - 1}| - 1]
= s[k - |s_{n - 1}| + 1]
$$

So for $$|s_n| - 1 \le j < |s_{n + 1}| - 1$$,
$$f(j) = j - |s_{n - 1}|$$. When $$n = 5$$ and
$$3 \le j < 4$$, the assumption is correct. There the proof is complete.

### e)

In the KMP algorithm, what is the largest number of consecutive applications of the failure
function, when we try to determine whether keyword $$s_k$$ appears in text string $$s_{k + 1}$$?

1) For $$j \in [|s_n| - 3, |s_n| - 2]$$ and $$5 \le n \le k + 1$$, if $$t[i + 1] \ne s[j + 1]$$,
then $$t[i + 1] = s[f(j) + 1]$$. There is one application of the failure function.

2) For $$j = |s_n| - 1$$ and $$3 \le n \le k + 1$$, if $$t[i + 1] \ne s[j + 1]$$,
since

$$s[j + 1] = s[f^*(j) + 1]$$

then

$$t[i + 1] \ne s[f^*(j) + 1]$$

We know

$$f(j) = j - |s_{n - 1}| = |s_{n - 2}| - 1$$

$$f(f(j)) = f(j) - |s_{n - 3}| = |s_{n - 4}| - 1$$

We will apply the failure function $$\lfloor \frac{n - 1}{2} \rfloor$$ times.

Therefore, the largest number of consecutive application of the failure function is
$$\lfloor \frac{k - 1}{2} \rfloor$$.
