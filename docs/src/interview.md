# Interview Questions

## Form a Triangle
If you break a stick at two points chosen uniformly, what is the probability the three resulting sticks form a triangle?

!!! solution
    ``\frac{1}{4}``. Use ordered statistics. 

## The Murderer
You are guarding 100 murderers in a field, and you have a gun with a single bullet. If any one of the murderers has a non-zero probability of surviving, he will attempt to escape. If a murderer is certain of death, he will not attempt an escape. How do you stop them from escaping? [source](https://news.efinancialcareers.com/uk-en/314415/quant-interview-questions-finance)

!!! solution
    Starting with n=1. Tell the head murderer in each subgroup that you will shoot him if all group members escape.

## Random Character
You have a file that contains an unknown number of characters. How do you pick a character such that each character in the file has equal probability of being chosen?

!!! solution
    Use a buffer that holds one character. At ``i``th character, replace it with the next character with probability ``\frac{i}{i+1}``.

## Optimal Stepsize
Suppose we use finite difference method to compute ``f'(x)``
$$f'(x) \approx \frac{f(x+h)-f(x)}{h}$$
Discuss the optimal ``h``.

!!! solution
    If we compute ``f(x)`` with 64-bit floating-point numbers, we will incur **roundoff error**
    $$\bar f(x) = f(x)(1+\varepsilon_1)$$
    Additionally, when we use finite difference method, there will be **truncation error**
    $$\frac{f(x+h)-f(x)}{h} - f'(x) = \frac{h}{2}f''(\xi_h)$$
    The optimal ``h`` can be computed by considering
    $$\left\| \frac{\bar f(x+h)-\bar f(x)}{h} - f'(x) \right\|$$