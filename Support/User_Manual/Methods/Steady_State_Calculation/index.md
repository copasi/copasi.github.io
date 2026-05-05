---
layout: structure
title: "Steady State Calculation"
structure: "User_Manual"
use_math: true
---


A *steady state* is a condition in which the state variables of a model—such 
as species concentrations—do not change over time. Mathematically, this is 
expressed by setting the differential equations describing the time evolution 
of the metabolic system to zero. This creates a system of algebraic 
nonlinear equations. COPASI can use multiple strategies and numerical 
methods to solve them.

Internally, all calculations operate on particle numbers and particle number 
rates, rather than concentrations. The *reduced model* 
([Deterministic Interpretation of the Model](
{{ site.baseurl }}/Support/User_Manual/The_Model_in_COPASI/Deterministic_Interpretation_of_the_Model/)) 
is used for these computations. The Jacobian (utilized in the Newton method 
and for computing eigenvalues) is calculated using finite differences. 
Eigenvalues of the Jacobian are computed using LAPACK.

#### Options for Steady State Analysis

- **Use Newton**  
  Boolean value. Determines whether to use the *damped Newton method* 
  to solve the nonlinear algebraic equations defining the steady state. 
  The initial concentrations set by the user are used as the starting guess. 
  Default: `true` (use Newton).

  The damped Newton method is a modified version of the classical Newton 
  method, which iteratively refines a guess until the residual error 
  is below a threshold. If too many iterations are needed without finding 
  an acceptable solution, the method halts with no result.

  The classic Newton iteration is:  
  $$
  x_i = x_{i-1} - \frac{f(x_{i-1})}{f'(x_{i-1})}
  $$
  In the damped method, if $x_{i-1}$ has a larger residual error than 
  $x_i$, the following is used:
  $$
  x_i = x_{i-1} - \frac{f(x_{i-1})}{f'(x_{i-1})} \cdot 2^{-n}, \quad n = 0, \ldots, 32
  $$
  The first value providing a smaller residual error is accepted. If 
  none is found, the procedure stops (local minimum).

- **Use Integration**  
  Boolean value. Determines whether to use the 
  [deterministic ODE solver](
  {{ site.baseurl }}/Support/User_Manual/Methods/Time_Course_Calculation/Deterministic_Simulation/) 
  to simulate the system forward in time until a steady state is reached.
  If a steady state is not reached within $10^{10}$ units of time, the 
  method stops with no solution. If "Use Newton" is set, the Newton method 
  is attempted at each intermediate time point. Default: `true` (use integration).

- **Use Back Integration**  
  Boolean value. Specifies whether to use the deterministic ODE solver to 
  simulate the system backward in time until a steady state is reached.
  The stopping criteria are the same as above. If "Use Newton" is set, 
  the Newton method is attempted at each step. Value of `true` means back 
  integration is used.

- **Accept Negative Concentrations**  
  Boolean value. Determines whether steady states yielding negative 
  concentrations are acceptable. `true` allows negative concentrations; 
  `false` (default) discards such results.

- **Iteration Limit**  
  Positive integer. Sets the maximum number of iterations for the damped 
  Newton method before it reports failure. Default: `50`.

- **Derivation Factor**  
  Numeric value. Step size used for numerical estimation of 
  $f'(x_{i-1})$. Default: `0.001`.

- **Resolution**  
  Positive numeric value. Specifies the threshold for considering the 
  system to be at steady state—if the absolute change in every state 
  variable is below this value, the system is at steady state. 
  Default: $10^{-9}$.

  Note: Although the calculation internally uses particle numbers, this 
  value is interpreted as a concentration (heuristically). Modelers should 
  check that the default is appropriate for their model units.

- **Target Criterion**  
  Specifies the acceptance criterion for the steady state. Options include:

  - **Rate**: The largest value on the right-hand side of the ODEs must be 
    less than the Resolution value (in concentration units).
  - **Distance**: The Newton method increment must be less than the 
    Resolution value.
  - **Distance and Rate**: Both of the above must be satisfied 
    (this is the default, to avoid false positives).
