---
id: ex-estimating-arp
title: "Estimating an AR(p) model for Swiss inflation"
difficulty: "Core"
type: "Estimation and diagnostics"
related: "estimARp"
---

## Statement

The figure shows Swiss year-on-year inflation.

![](images/exercises/swiss-inflation.png){width=95%}

Model $y_t=c+\phi_1y_{t-1}+\cdots+\phi_py_{t-p}+\varepsilon_t$, with $\varepsilon_t\overset{i.i.d.}{\sim}\mathcal N(0,\sigma^2)$. Let $Y=(y_{p+1},\ldots,y_T)'$ and let $X$ contain an intercept and the $p$ lags.

1. Give the conditional maximum-likelihood estimators of $\beta=(c,\phi_1,\ldots,\phi_p)'$ and $\sigma^2$.
2. For $p=1$, $\hat c=0.025$ (s.e. 0.019) and $\hat\phi_1=0.987$ (s.e. 0.006). Is the fitted process stationary? Comment on persistence.
3. Regressing the AR(1) residual on its lag gives 0.207 (s.e. 0.034). What does this imply about specification?
4. For $p=2$, the estimates are $\hat c=0.033$, $\hat\phi_1=1.194$, and $\hat\phi_2=-0.210$. The lagged-residual coefficient is $-0.027$ (s.e. 0.035). Check stationarity from the companion roots and assess the new specification.
