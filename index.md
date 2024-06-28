---
title: Spectral Decompostion for XXZ
---

# Introduction

We introduce a formual for the spectral decomposition of the one-dimesional Heisnberg-Ising (XXZ) spin-1/2 chain. The formula is based on the Bethe Ansatz and contour integrals. In this project, we devoloped code to verify the spectral decompositon numerically and also develope simple, yet powerful, simulations of the XXZ spin chain. The goal is to develop state of the art simulations for two-dimensional quantum spin chains through an approximation methods.

Below, you may find blog posts detailng some of out progress as we prepare our results for publication. Feel free to leave comments on the posts.

## The model

The dynamics of the Heisenberg-Ising spin-1/2 model are determined by local spin-spin interactions. We take the spin particles to lie on an one-dimensional ring of length $$L$$. There are $$L$$ particles on the ring and each particle is either in spin-up configuration, $$| \uparrow \rangle$$

## One-point function

The one-point function is the probability of finding an up-spin at a specific position at a specific time.  The (brute force) computation for the one-point function requires a large number of summations given the wave function of the system. The number of terms in the summation increases exponentially with the size of the system. Thus, we test our formulas by computing the one-point function. Here is an example for the case of a ring of length 41 with two up-spins that start in the middle of the ring: 

![plot](/URSA23/outputs/n2 l41 d0.0 [20, 21] (job 1912755).png)

The dimension of the system is 820 and, for each time slice, the computation required a summation with roughly $$820^2=672400$$ terms. The computation took 5770 seconds using OSU's cluster

# Team
- Axel Saenz Rodiguez, Assitant Professor, Math, Oregon State University
- Nik Elsasser, PhD Student, Math, Oregon State University
- Johaness Hurmann, Undergraduate Student, Oregon State University
- Crystal Lee, Undergraduate Student, Oregon State University
- Mason Spears, Undergraduate Student, Oregon State University
- Christie Chang, Undergraduate Student, Oregon State University
- Muhammad Faks, Undergraduate Student, Oregon State University
- Ahmed Zaidan, Undergraduate Student, Oregon State University


# Funding 

This projext is funded by Oregon State University

A. Saezn Rodriguez and N. Elsasser were funded through the [Research and Innovation Seed Program (SciRIS)](https://science.oregonstate.edu/research/research-and-innovation-seed-program) undeer the project titled *Polariton-controlled spin waves in quantum magnets for next-generation spintronics*

C. Lee, M. Spears, and C. Chaing were funded through the [URSA Engage Program 2023-2024](https://academicaffairs.oregonstate.edu/research/ursa-engage)

M. Faks and A. Zaidan were funded through the [URSA Engage Program 2022-2023](https://academicaffairs.oregonstate.edu/research/ursa-engage)

<script type="text/javascript" async
  src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML" async>
</script>
