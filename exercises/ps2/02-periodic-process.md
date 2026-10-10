---
id: ex-periodic-process
title: "A periodically centered AR(1)"
difficulty: "Advanced"
type: "Likelihood and testing"
related: "estimAR1"
---

## Statement

Consider
$$
y_t=\cos(\psi t)+\rho\{y_{t-1}-\cos[\psi(t-1)]\}+\varepsilon_t,
\qquad \varepsilon_t\overset{i.i.d.}{\sim}\mathcal N(0,\sigma^2),
$$
with $|\rho|<1$.

1. Identify the process followed by $x_t=y_t-\cos(\psi t)$.
2. Derive the unconditional mean and variance of $y_t$.
3. Derive the conditional Gaussian log-likelihood for $\theta=(\psi,\rho,\sigma^2)'$.
4. Explain how to estimate $\theta$ and its asymptotic covariance matrix.
5. For monthly data, interpret $\psi=2\pi/12$.
6. Describe Wald and likelihood-ratio tests of $H_0:\psi=2\pi/12$ and $\rho=0.9$. Give the 5% and 1% critical values.
