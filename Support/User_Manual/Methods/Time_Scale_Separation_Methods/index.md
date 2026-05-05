---
layout: structure
title: "Time Scale Separation Methods"
structure: "User_Manual"
use_math: true
---


To introduce the basic ideas of time scale decomposition, we begin by
considering a linear system with first-order kinetics. The ordinary
differential equations (ODEs) describing the evolution of the state vector
$\mathbf{y}$ can be written as:

$$
\frac{d\,\mathbf{y}}{dt} = \mathbf{J} \cdot \mathbf{y}
$$

where $\mathbf{J}$ is a constant Jacobian matrix. By using the set of right
eigenvectors $\mathbf{A}$ of $\mathbf{J}$ as a new basis, we can decompose the
Jacobian [\[Golub96\]]({{ site.baseurl }}/Support/User_Manual/Bibliography#Golub96):

$$
\mathbf{x} = \mathbf{A}^{-1} \cdot \mathbf{y}, \quad
\mathbf{\Lambda} = \mathbf{A}^{-1} \cdot \mathbf{J} \cdot \mathbf{A}.
$$

The components of the transformed concentration vector $\mathbf{x}$ are called
*modes*. Since $\mathbf{\Lambda}$ is a diagonal matrix composed of the real or
complex eigenvalues $\lambda_i$ of $\mathbf{J}$, the transformed ODE system is
fully decoupled:

$$
\frac{d\, x^i}{dt} = \lambda^i x^i, \quad i = 1, \dots, N.
$$

Thus, the modes $x^i \sim e^{\lambda^i t}$ evolve independently of each other.
The reciprocals of the real parts of the eigenvalues give the time scales:

$$
\tau_i = -\frac{1}{\mathrm{Re}(\lambda^i)}
$$

Each $\tau_i$ has units of time and is referred to as a time scale (TS).
Ordering the time scales such that $\tau_1 < \tau_2 < \ldots < \tau_N$ yields
an approximate ranking of the speed of the modes 
[\[Lam93\]]({{ site.baseurl}}/Support/User_Manual/Bibliography#Lam93). Modes associated with fast time
scales (i.e., eigenvalues with large negative real parts) decay toward zero
very quickly and can be eliminated from the system for $t \gg \tau_M$, where
$\tau_M$ is a fast time scale.

For general nonlinear problems, the Jacobian is time-dependent, and its
eigenvalues and eigenvectors change over time. Therefore, to obtain a
reasonable characterization of the system's dynamics, time scale decomposition
must be performed repeatedly at various time points throughout the evaluation
of the reaction system.

The methods described here take advantage of the wide range of characteristic
time scales present in biological systems. They are based on local analysis of
the Jacobian, partitioning it into fast and slow components at the initial
point of a user-chosen interval.

All three methods involve numerical integration using the LSODA solver
[\[Petzold83\]]({{ site.baseurl }}/Support/User_Manual/Bibliography#Petzold83),
(see [deterministic simulation]({{ site.baseurl}}/Support/User_Manual/Methods/Time_Course_Calculation/Deterministic_Simulation)).
The TSSA methods use the Schur transformation and solution of the Sylvester
equation [\[Golub96\]]({{ site.baseurl}}/Support/User_Manual/Bibliography#Golub96) 
(as in the ILDM and Modified ILDMapproaches), which are performed by 
[CLAPACK](http://www.netlib.org/clapack).

<div>
  {% include toc.html %}
</div>
