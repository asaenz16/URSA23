---
title: Spectral decompostion for the periodic one-dimensional XXZ quantum spin-1/2 chain.
comments: true
---

<link rel="alternate" type="application/rss+xml" href="{{ site.url }}/feed.xml">

# Introduction

We introduce a formual for the spectral decomposition of the one-dimesional Heisnberg-Ising (XXZ) spin-1/2 chain. The formula is based on the Bethe Ansatz and contour integrals. In this project, we devoloped code to verify the spectral decompositon numerically and also develope simple, yet powerful, simulations of the XXZ spin chain. The goal is to develop state of the art simulations for two-dimensional quantum spin chains through an approximation methods.

Below, you may find blog posts detailng some of out progress as we prepare our results for publication. Feel free to leave comments on the posts.

## The model

The dynamics of the Heisenberg-Ising spin-1/2 model are determined by local spin-spin interactions. We take the spin particles to lie on an one-dimensional ring of length $$L$$. There are $$L$$ particles on the ring and each particle is either in spin-up configuration, $$\mid \uparrow\rangle$$, or in spin-down configuration, $$\mid \downarrow \rangle$$. The different configurations of the system is given by a sequenc of $$L$$ up-spins and down-spins:

$$\mid s_1 s_2 \cdots s_L \rangle$$,

where $$s_i =\mid \uparrow\rangle, \mid \downarrow\rangle$$. These different configurations make up a complete orthonormal set of eigenbasis for Hilbert space $$\mathcal{H}$$ for the system. In particular, we have

$$\mathcal{H} = \mathbb{C}^2 \otimes \cdots \otimes \mathbb{C}^2$$

so that $$\dim \mathcal{H} = 2^L$$. The state of the system $$\mid \Psi\rangle \in \mathcal{H}$$ is a linear combination of configuration basis elements with normed square equal to one. Given a state of the system, the probability of measuring the system in a specific configuration is given as follows:

$$
\mathrm{Prob}_{\Psi}(\mid s_1 \cdots s_L\rangle) = \vert\langle s_1 \cdots s_L \mid \Psi\rangle \vert^2
$$

The Hamiltonian (Energy operator) is a sum of local energy operators. The local operator $$h_i$$ acts on the $$s_i$$ and $$s_{i+1}$$ spins, $$i = 1, \dots L$$ with indexes/sites $$L+1$$
and $$1$$ identified, as follows:

$$
h_i :\begin{cases} \mid \uparrow \uparrow \rangle \mapsto 0 \\
\mid \uparrow \downarrow \rangle \mapsto \Delta \mid \uparrow \downarrow \rangle - \mid \downarrow \uparrow\rangle\\
\mid \downarrow \uparrow \rangle \mapsto \Delta \mid \downarrow \uparrow\rangle - \mid \uparrow \downarrow\rangle\\
\mid \downarrow \downarrow \rangle \mapsto 0 \end{cases}
$$

where $$\Delta \in \mathbb{R}$$ is the *anisotropy* parameter. Then, the Hamiltonian of the system is given as follows:

$$
H= \sum_{i=1}^{L} h_{i}: \mathcal{H} \rightarrow \mathcal{H}.
$$

The system eveloves according to the Schrödinger equation

$$
i \hbar \frac{d}{dt}\mid \Psi(t) \rangle = H \mid \Psi(t) \rangle.
$$

## Objective 

In this project, we aim to given an exact solution of the Schrödinger equation for the system with dterministic initial conditions

$$
\mid \Psi(0)\rangle = \mid x_1, \dots, x_N \rangle 
$$

where the system has exactly $$N$$ up-spins at positions $$x_1, \dots x_N$$ at time zero.

# See

Further discussion on the following topics:

- [The one-point function](/URSA23/pages/OPF.html)


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

This project is funded by Oregon State University

A. Saezn Rodriguez and N. Elsasser were funded through the [Research and Innovation Seed Program (SciRIS)](https://science.oregonstate.edu/research/research-and-innovation-seed-program) under the project titled *Polariton-controlled spin waves in quantum magnets for next-generation spintronics*

C. Lee, M. Spears, and C. Chaing were funded through the [URSA Engage Program 2023-2024](https://academicaffairs.oregonstate.edu/research/ursa-engage)

M. Faks and A. Zaidan were funded through the [URSA Engage Program 2022-2023](https://academicaffairs.oregonstate.edu/research/ursa-engage)



<script type="text/javascript" async
  src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML" async>
</script>

{% if page.comments %}

<div id="disqus_thread"></div>
<script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
    
    var disqus_config = function () {
    this.page.url = {{ post.url | prepend: site.baseurl | prepend: site.url }};  // Replace PAGE_URL with your page's canonical URL variable
    this.page.identifier = {{page.title}}; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://https-asaenz16-github-io-ursa23.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

{% endif %}




{% include utterances.html %}
