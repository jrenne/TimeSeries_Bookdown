---
id: ex-exam2025-armax-effects-and-forecasts
title: "Effects and forecasts in an ARMAX model"
difficulty: "Exam"
type: "True/false"
related: "ARMAXDynamic"
---

## Statement

Consider
$$
y_t=\phi_1y_{t-1}+\beta_0x_t+\beta_1x_{t-1}+\varepsilon_t,
$$
where $\varepsilon_t\overset{i.i.d.}{\sim}\mathcal N(0,\sigma^2)$ and $x_t\overset{i.i.d.}{\sim}\mathcal N(\mu_x,\sigma_x^2)$. The two innovation sequences are independent. Conditional moments at date $t$ use the history of $x_t$, $y_t$, and $\varepsilon_t$.

State whether each assertion is true or false and justify your answer.

1. Everything else equal, a unit increase in $x_t$ increases $y_{t+1}$ by $\beta_1$.
2. $\mathbb E_t(x_{t+1})=\mu_x$.
3. $\mathbb E_t(y_{t+1})=\phi_1y_t+\beta_0\mu_x+\beta_1x_t$.
4. $\mathbb{V}ar_t(y_{t+1})=\sigma^2$.
5. Everything else equal, a unit increase in $\varepsilon_t$ increases $y_{t+1}$ by $\phi_1+\beta_0$.
