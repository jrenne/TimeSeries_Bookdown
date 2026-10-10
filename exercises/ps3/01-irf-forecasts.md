---
id: ex-irf-forecasts
title: "Impulse responses and forecast uncertainty"
difficulty: "Core"
type: "Analytical"
related: "IRFARMA"
---

## Statement

Let $\varepsilon_t\overset{i.i.d.}{\sim}\mathcal N(0,\sigma^2)$ and consider:

1. $y_t=\varepsilon_t+0.5\varepsilon_{t-1}+0.2\varepsilon_{t-2}$;
2. $y_t=1+0.9y_{t-1}+\varepsilon_t$;
3. $y_t=1+0.5y_{t-1}+\varepsilon_t+0.5\varepsilon_{t-1}$.

For each process:

1. Compute the impulse responses at horizons 0 through 4.
2. State the corresponding first five Wold coefficients.
3. Compute the mean squared error of the four-step-ahead forecast.
4. Explain how parameter estimation changes forecast uncertainty.

Finally, consider $y_t=1+0.5y_{t-1}+x_t+0.5x_{t-1}+\varepsilon_t+0.8\varepsilon_{t-1}$, with $x_t$ strictly exogenous. Compute the dynamic multipliers of $x_t$ at horizons 0 through 4.
