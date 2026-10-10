---
id: ex-cointegration
title: "A bivariate cointegrated VAR"
difficulty: "Core"
type: "Analytical"
related: "cointeg"
---

## Statement

Consider
$$Y_t=\begin{bmatrix}.7&-.6\\-.2&.6\end{bmatrix}Y_{t-1}+\varepsilon_t,$$
where $\varepsilon_t$ is i.i.d. Gaussian with mean zero and nonsingular covariance matrix. The coefficient matrix has eigenvalues 1 and 0.3.

1. Express $\Delta Y_t$ in terms of $Y_{t-1}$.
2. Show that $\Delta Y_t=Bz_{t-1}+\varepsilon_t$, where $z_t=\gamma'Y_t$, $\gamma'=(1,2)$, and identify $B$.
3. Derive the dynamics and unconditional mean of $z_t$.
4. What does this imply about $Y_t$ and its cointegration rank?
5. Compute $\mathbb E(\Delta y_{1,t}\mid z_{t-1}=1)$ and $\mathbb E(\Delta y_{2,t}\mid z_{t-1}=1)$, and interpret the adjustment.
