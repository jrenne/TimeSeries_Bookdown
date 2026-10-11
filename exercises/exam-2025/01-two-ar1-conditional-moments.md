---
id: ex-exam2025-two-ar1-conditional-moments
title: "Conditional moments of two AR(1) processes"
difficulty: "Exam"
type: "True/false"
related: "ARsection"
---

## Statement

Consider
$$
x_t=\rho_xx_{t-1}+\varepsilon_t,
\qquad
y_t=\rho_yy_{t-1}+\varepsilon_t,
$$
where $\varepsilon_t\overset{i.i.d.}{\sim}\mathcal N(0,\sigma^2)$, $\sigma^2>0$, and $0<\rho_x<\rho_y<1$. Conditional moments at date $t$ use the history of both processes.

State whether each assertion is true or false and justify your answer.

1. $\mathbb{V}ar(y_t)>\mathbb{V}ar(x_t)$.
2. $\mathbb{V}ar_t(y_{t+2})=\mathbb{V}ar_t(x_{t+2})$.
3. $\mathbb E(y_t)>\mathbb E(x_t)$.
4. $\mathbb E_{t+1}(y_{t+h})=\rho_y^hy_{t+1}$ for $h\ge2$.
5. $\mathbb{C}ov_t(y_{t+1},y_t)=0$.
