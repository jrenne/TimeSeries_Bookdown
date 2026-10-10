---
id: ex-var-model
title: "VAR lag selection, stability, and recursive identification"
difficulty: "Advanced"
type: "Multivariate analysis"
related: "estimVAR"
---

## Statement

A quarterly VAR contains inflation, the output gap, and the short-term interest rate ($T=224$). The criteria for lags 1–10 attain their minima at lag 6 for AIC, lag 3 for HQ, and lag 2 for BIC.

1. State the lag choice implied by each criterion.
2. If BIC is followed, explain conditional Gaussian maximum-likelihood estimation of the VAR(2).
3. Explain how the $6\times6$ companion matrix is formed and how its eigenvalues determine covariance stationarity.

The fitted coefficient matrices are
$$
\widehat\Phi_1=\begin{bmatrix}.627&.054&.077\\.034&1.255&-.087\\.143&.560&.687\end{bmatrix},\qquad
\widehat\Phi_2=\begin{bmatrix}.271&.010&-.065\\-.031&-.298&.053\\.027&-.465&.203\end{bmatrix}.
$$

We seek supply, demand, and monetary-policy shocks. A monetary-policy shock has no contemporaneous effect on activity or inflation, and a demand shock has no contemporaneous effect on activity.

4. Are these three zero restrictions sufficient for exact identification under the stated recursive structure?
5. Give the ordering of variables and shocks that makes the impact matrix lower triangular, and explain it economically.
