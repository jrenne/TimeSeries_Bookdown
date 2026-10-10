---
id: ex-unit-root-tests
title: "Interpreting ADF and Phillips–Perron tests"
difficulty: "Advanced"
type: "Empirical interpretation"
related: "NonStat"
---

## Statement

For samples of 100 observations, ADF and Phillips–Perron tests are computed with a constant and no linear trend:

| Statistic | $x_t$ | $y_t$ | $z_t$ |
|---|---:|---:|---:|
| $ADF_t$ | 0.14 | -3.51 | -2.81 |
| $Z_t$ | 0.34 | -3.82 | -3.01 |
| $ADF_\rho$ | -0.96 | -18.4 | -15.3 |
| $Z_\rho$ | -1.12 | -20.2 | -11.2 |

At the 5% level for this specification and sample size, use the approximate critical values $-2.89$ for the $t$-type statistics and $-14.1$ for the normalized-coefficient statistics.

1. State the conclusion of each of the twelve tests.
2. Summarize the evidence for the integration order of each series, noting any disagreement between tests.
3. For which pairs is a conventional cointegration analysis potentially meaningful? Explain why equal integration orders are required.
