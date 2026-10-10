---
id: ex-exam2024-dynamic-multiplier
title: "A one-date exogenous intervention"
difficulty: "Exam"
type: "True/false"
related: "ARMAXDynamic"
---

## Statement

For $t\ge0$, let
$$y_t=0.5y_{t-1}+x_t+\varepsilon_t,\qquad \widetilde y_t=0.5\widetilde y_{t-1}+\widetilde x_t+\varepsilon_t,$$
with $y_0=\widetilde y_0=0$. The inputs are deterministic, $\widetilde x_t=x_t$ except at one date $s>0$, and $\widetilde x_s=x_s+1$.

State whether each assertion is true or false and justify your answer.

1. For $t<s$, $\widetilde y_t=y_t$.
2. For all $t\ge s$, $\widetilde y_t=y_t$.
3. For every $h\ge0$, $\widetilde y_{s+h}-y_{s+h}=1$.
4. If $x_t$ is constant, $y_t$ is an AR(1) with an intercept.
5. $\operatorname{Var}(y_t)=\operatorname{Var}(\widetilde y_t)$.
