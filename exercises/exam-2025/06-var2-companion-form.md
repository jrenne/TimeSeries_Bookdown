---
id: ex-exam2025-var2-companion-form
title: "A VAR(2) in companion form"
difficulty: "Exam"
type: "True/false"
related: "VAR"
---

## Statement

Consider the covariance-stationary, zero-intercept VAR(2)
$$
y_t=\Phi_1y_{t-1}+\Phi_2y_{t-2}+\varepsilon_t,
\qquad
\varepsilon_t\overset{i.i.d.}{\sim}\mathcal N(\mathbf 0_{3\times1},\Omega),
$$
where $y_t$ is $3\times1$. Define
$$
y_t^*=\begin{pmatrix}y_t\\y_{t-1}\end{pmatrix},
\qquad
\Phi=\begin{pmatrix}\Phi_1&\Phi_2\\I_3&0_3\end{pmatrix},
\qquad
\Omega^*=\begin{pmatrix}\Omega&\mathbf 0_{3\times3}\\\mathbf 0_{3\times3}&\mathbf 0_{3\times3}\end{pmatrix}.
$$

State whether each assertion is true or false and justify your answer.

1. $\mathbb E(y_t)=\mathbf 0_{3\times1}$.
2. $\mathbb{V}ar(y_t)$ is the upper-left $3\times3$ block of $\sum_{j=0}^{\infty}\Phi^j\Omega^*(\Phi^j)'$.
3. $\mathbb E_t(y_{t+2})=\Phi_1y_t+\Phi_2y_{t-2}$.
4. $\mathbb E_t(y_{t+h})$ is the upper $3\times1$ block of $\Phi^hy_t^*$.
5. The eigenvalues of $\Phi$ have modulus strictly larger than one.
