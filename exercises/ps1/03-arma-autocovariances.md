---
id: ex-arma-autocovariances
title: "Autocovariances of an ARMA(2,1)"
difficulty: "Advanced"
type: "Analytical"
related: "Univariate"
---

## Statement

Consider
$$
y_t=\phi_1y_{t-1}+\phi_2y_{t-2}+\varepsilon_t+\varepsilon_{t-1},
$$
where $\{\varepsilon_t\}$ is white noise with variance $\sigma^2$ and the AR polynomial is stable. Let $\gamma_h=\mathbb{C}ov(y_t,y_{t-h})$.

1. Compute $\mathbb{C}ov(\varepsilon_t,y_t)$ and $\mathbb{C}ov(\varepsilon_{t-1},y_t)$.
2. Derive the equations linking $\gamma_0$, $\gamma_1$, and $\gamma_2$.
3. Show that $\gamma_h=\phi_1\gamma_{h-1}+\phi_2\gamma_{h-2}$ for $h\geq2$.
4. Solve the three-equation system for $\gamma_0$, $\gamma_1$, and $\gamma_2$ (a matrix expression is acceptable).
