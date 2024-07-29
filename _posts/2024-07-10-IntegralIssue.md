---
title: "Non-convergent Integral"
date: 2024-07-10
author: Axel Saenz
tags: ["Dynamical Spin Structure Factor"]
---

***Tags:*** {%for tag in page.tags %} *{{tag}}*{% if forloop.last != true %},{% endif %}{% endfor %}

# Integral don't converge

I started plotting formulas from the previous [post](/URSA23/2024/07/09/dissN1.html) using Mathematica. It seems like I'm missing something. In particular, the integrals don't seem to converge when I compute them. 

[Here (Evaluation of Dynamic spin structure factor for the spin-1/2 XXZ chain in a magnetic field, 2004)](https://arxiv.org/pdf/cond-mat/0410102) is a reference that seems to have more details and clarify some of the computations. More refernces:

- [Two-spinon dynamic structure factor of the one-dimensional s=1/2 Heisenberg antiferromagnet (1997)](https://digitalcommons.uri.edu/cgi/viewcontent.cgi?article=1059&context=phys_facpubs)
- [Computation of dynamical correlation functions of Heisenberg chains in a field (2005)](https://arxiv.org/pdf/cond-mat/0502365)
- [The 4-spinon dynamical structure factor of the Heisenberg chain (2006)](https://arxiv.org/pdf/cond-mat/0611319)
- [Dynamical structure factor of the J1 − J2 Heisenberg model in one dimension: The
variational Monte Carlo approach (2018)](https://arxiv.org/pdf/1803.02359)

## Resolution

It turns out that I had the wrong initial state for the formula of the dynamical spin structure factor. I was taking a deterministic spin initial state. Instead, I should have been taking the ground state as the intial state. 

Additionally, I was confused by the following integral formula

$$
\int_{-\infty}^{\infty} e^{i x t} dt = \delta(x) = \begin{cases} \infty , & \quad x=0\\ 0 , &\quad x \neq 0 \end{cases}.
$$

It turns out that the equality above is an equality as a distribution. Otherwise, the integral above doesn't converge. That is why my results were not making sense.

### Next Step

- I will do the computation in detail where the integral idenity above is used.
- Try the $$N=1$$ case again.

{% include utterances.html %}
