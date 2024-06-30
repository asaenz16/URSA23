---
title: Calibration error 
date: 2024-06-29
tags: ["Needs Fixing"]
---

Check out this plot:

![Plot](/URSA23/outputs/n2 l41 d0.5 [20, 21] (job 1912757).png)

*Q: What is wrong?*

*A: The value of the graph should start as 1 (not 0.8) at time equal 0 for the positions where the up-signs are located.*

#### *Why?*

My best guess is that the *Bethe Equations (BE)* were not solved to good enough precision, i.e. the solutions we're not calibrated well enough. Recall that the BE are only solved numerically as the limit point of a sequence that converges to a solution due to the *Fixed Point Theorem (FPT)*.

In the code, we only approximate the limit points by computing a term in the sequence with a large enough index. Thus, the values from the code are only approximations to the exact solutions.

#### *Remark*

The plots with $$\Delta=0$$ don't suffer from this error since the sequence in that case is constant, i.e. the sequence converges by the first term.

## Next steps

- In the code, we have a parameter that determines the index of the sequence. We need to make that higher.



{% include utterances.html %}

