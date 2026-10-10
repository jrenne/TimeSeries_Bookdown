---
id: ex-forecast-performance
title: "Forecast comparison and the Diebold–Mariano test"
difficulty: "Advanced"
type: "Forecast evaluation"
related: "forecasting"
---

## Statement

Three one-step forecasting models are compared on 200 observations: A, a random walk; B, an AR(1); and C, an ARMA(2,2). The out-of-sample exercise uses 100 rolling estimation windows of length 100.

| | Model A | Model B | Model C |
|---|---:|---:|---:|
| In-sample RMSE | 1.03 | 0.96 | 0.94 |
| Out-of-sample RMSE | 1.11 | 1.02 | 1.09 |
| Mean loss differential $\bar d$ versus A | — | -0.191 | -0.044 |
| $\hat\gamma_0$ | — | 0.090 | 0.132 |
| $\hat\gamma_1$ | — | 0.061 | 0.086 |
| $\hat\gamma_2$ | — | 0.020 | 0.047 |
| $\hat\gamma_3$ | — | 0.003 | 0.011 |

Here $d_t=e_{j,t}^2-e_{A,t}^2$, for $j=B,C$.

1. Discuss the in-sample and out-of-sample rankings.

2. Using a Newey–West long-run variance with maximum lag 3 and Bartlett weights, estimate $\operatorname{Var}(\bar d)$.

3. Test at 5% whether B and C have equal predictive accuracy to A, and interpret the sign of the test statistic.
