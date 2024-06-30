---
title: One-Point Function
---

The *one-point function* is the probability of finding an up-spin at a specific position at a specific time.  The (brute force) computation for the one-point function requires a large number of summations given the wave function of the system. The number of terms in the summation increases exponentially with the size of the system. Thus, we test our formulas by computing the one-point function. Here is an example for the case of a ring of length 41 with two up-spins that start in the middle of the ring: 

![plot](/URSA23/outputs/n2 l41 d0.0 [20, 21] (job 1912755).png)

The dimension of the system is 820 and, for each time slice, the computation required a summation with roughly $$820^2=672400$$ terms. The computation took 5770 seconds using OSU's cluster

# Formulas 

