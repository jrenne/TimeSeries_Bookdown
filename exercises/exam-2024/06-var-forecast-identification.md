---
id: ex-exam2024-var-forecast-identification
title: "VAR forecasts and structural impacts"
difficulty: "Exam"
type: "True/false"
related: "VAR"
---

## Statement

Consider the three-variable VAR(3)
$$y_t=c+\Phi_1y_{t-1}+\Phi_2y_{t-2}+\Phi_3y_{t-3}+B\eta_t,$$
where $\eta_t\overset{i.i.d.}{\sim}\mathcal N(0,I_3)$.

State whether each assertion is true or false and justify your answer.

1. $\mathbb E_t(y_{t+2})=c+\Phi_1c$.
2. $\operatorname{Var}_t(y_{t+1})=BB'$.
3. Knowing $\Omega=BB'$ is sufficient to recover an unrestricted $B$.
4. The contemporaneous impacts of a unit $\eta_{2,t}$ shock on the three variables are $B_{1,2}$, $B_{2,2}$, and $B_{3,2}$.
5. If $B$ is lower triangular, an $\eta_{3,t}$ shock has no contemporaneous effect on $y_{1,t}$ or $y_{2,t}$.
