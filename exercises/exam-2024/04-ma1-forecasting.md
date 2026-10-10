---
id: ex-exam2024-ma1-forecasting
title: "Inflation forecasts from an MA(1)"
difficulty: "Exam"
type: "True/false"
related: "forecasting"
---

## Statement

Let annual inflation be $\pi_t=0.02+\varepsilon_t+0.4\varepsilon_{t-1}$, where $\varepsilon_t\overset{i.i.d.}{\sim}\mathcal N(0,\sigma^2)$ and $\sigma=0.01$.

State whether each assertion is true or false and justify your answer.

1. For $h>0$, $\mathbb E(\pi_{t+h}+\cdots+\pi_{t+1}\mid\varepsilon_t,\varepsilon_{t-1},\ldots)=0.02h+0.4\varepsilon_t$.
2. $\operatorname{Var}(\pi_t)=0.01$.
3. Conditional on $\varepsilon_t=0$, a 95% interval for $\pi_{t+1}$ is $[-1.96\sigma,1.96\sigma]$.
4. $\pi_t$ is correlated with $\pi_{t-1}$ but uncorrelated with $\pi_{t-2}$.
5. $\operatorname{Var}_t(\pi_{t+3})=\operatorname{Var}_t(\pi_{t+2})$.
