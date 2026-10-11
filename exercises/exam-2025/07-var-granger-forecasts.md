---
id: ex-exam2025-var-granger-forecasts
title: "Granger causality and forecasts in a VAR(1)"
difficulty: "Exam"
type: "True/false"
related: "BlockGranger"
---

## Statement

Consider the VAR(1)
$$
y_t=\Phi y_{t-1}+\varepsilon_t,
\qquad
\Phi=\begin{pmatrix}0.9&0\\0.6&0.8\end{pmatrix},
\qquad
\varepsilon_t\overset{i.i.d.}{\sim}\mathcal N(\mathbf 0,I_2),
$$
where $y_t=(y_{1,t},y_{2,t})'$. Conditional moments at date $t$ use current and past information.

State whether each assertion is true or false and justify your answer.

1. $y_{1,t}$ is covariance stationary.
2. $y_{2,t}$ Granger-causes $y_{1,t}$.
3. $y_{1,t}$ Granger-causes $y_{2,t}$.
4. $\mathbb E_t(y_{t+h})=\Phi^hy_t$ for every $h\ge0$.
5. $\mathbb{V}ar_t(y_{t+2})=I_2+\Phi\Phi'+\Phi^2(\Phi^2)'$.
