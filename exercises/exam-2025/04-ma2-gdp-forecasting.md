---
id: ex-exam2025-ma2-gdp-forecasting
title: "GDP forecasts from an MA(2) growth model"
difficulty: "Exam"
type: "True/false"
related: "forecasting"
---

## Statement

Let $y_t=\log(GDP_t/GDP_{t-1})$ and suppose
$$
y_t=\mu+\varepsilon_t+0.5\varepsilon_{t-1}+0.2\varepsilon_{t-2},
\qquad
\varepsilon_t\overset{i.i.d.}{\sim}\mathcal N(0,\sigma^2).
$$
Recall that $\log(GDP_{t+h})=\log(GDP_t)+y_{t+h}+\cdots+y_{t+1}$. Conditional moments at date $t$ use current and past information.

State whether each assertion is true or false and justify your answer.

1. $\mathbb E_t[\log(GDP_{t+2})]=\log(GDP_t)+2\mu+\varepsilon_{t+2}+1.5\varepsilon_{t+1}+0.7\varepsilon_t$.
2. $\mathbb{V}ar(y_t)=0.29\sigma^2$.
3. Conditional on date-$t$ information, a 95% interval for $y_{t+2}$ is $[\mu-1.96\sigma,\mu+1.96\sigma]$.
4. The first-order autocorrelation of $y_t$ is $0.6/1.29$.
5. $\mathbb E[\log(GDP_{t+h}/GDP_t)]=h\mu$.
