---
layout: structure
title: "Hybrid Simulation"
structure: "User_Manual"
use_math: true
---


## Hybrid (RK-45)

Unlike the other hybrid methods, which use a dynamic partitioning 
strategy based on particle numbers, Hybrid (RK-45) relies on a user-defined 
partitioning strategy.

It is also the only hybrid method, with support for discrete events.

### Options for Hybrid (RK-45)

- **Max Internal Steps:**  
  Maximum number of internal steps. Default: `1000000`.

- **Relative Tolerance:**  
  Desired numeric relative tolerance (default: $1.0 \cdot 10^{-6}$; best 
  achievable is approximately $2.22 \cdot 10^{-16}$).

- **Absolute Tolerance:**  
  Desired absolute tolerance, applied to species concentrations. 
  Default: $1.0 \cdot 10^{-9}$.

- **Partitioning Strategy:**  
  Choose among  
  - *All Reactions Deterministic*  
  - *All Reactions Stochastic*  
  - *User specified Partition*

- **Deterministic Reactions:**  
  (Used only if "User specified Partition" is selected.) Specifies which 
  reactions are simulated deterministically. The rest are treated stochastically.

- **Use Random Seed:**  
  `0` (default) means a random seed is used for each run; `1` will use the 
  user-supplied random seed for repeatable trajectories.

- **Random Seed:**  
  Unsigned integer seed, used if *Use Random Seed* is `1`. Default: `1`.

---

## Hybrid (Runge-Kutta)

The Hybrid (Runge-Kutta) simulation method combines deterministic 
numerical integration of ordinary differential equations (ODEs) with a 
stochastic simulation algorithm. The entire biochemical network is internally 
partitioned into a deterministic subnet and a stochastic subnet.

- The deterministic subnet includes all reactions involving only species with 
  high particle numbers.
- The stochastic subnet contains any reaction with at least one species having 
  a low particle number, where stochastic effects are important.

Users can specify which particle numbers are considered "low" or "high" 
using the *Lower Limit* and *Upper Limit* parameters. Species with particle 
numbers between these limits do not change their status, resulting in a 
hysteresis-like behavior. This avoids unnecessary switching when particle 
numbers fluctuate in the middle range.

Partitioning can be recalculated dynamically during the simulation, at 
intervals specified by the *Partitioning Interval* parameter. During each run, 
the deterministic and stochastic subnets are simulated in parallel. The 
deterministic part is integrated using a 4th-order Runge-Kutta method, while 
the stochastic part uses the Gibson and Bruck algorithm ([Gibson00]({{ site.baseurl }}/Support/User_Manual/Bibliography#Gibson00)). 
Reaction probabilities in the stochastic subnet are approximated as constant 
during each stochastic step, even though they may actually change due to 
deterministic effects.

> **Note:** The current Hybrid Runge-Kutta implementation is inefficient for 
> models with assignment rules, causing significantly longer calculation 
> times.

### Options for Hybrid (Runge-Kutta)

- **Max Internal Steps:**  
  Positive integer specifying the maximum number of internal steps allowed 
  before the next reporting time. Default: `1000000`.

- **Lower Limit:**  
  Double value specifying the lower particle number limit. Species below this 
  are considered to have a low particle number. Cannot be higher than the upper 
  limit. Default: `800`.

- **Upper Limit:**  
  Double value specifying the upper particle number limit. Species above this 
  are considered to have a high particle number. Cannot be lower than the 
  lower limit. Default: `1000`.

- **Runge Kutta Stepsize:**  
  Positive double specifying the step size for the Runge-Kutta integrator. 
  Default: `0.001`.

- **Partitioning Interval:**  
  Positive integer specifying after how many steps the partitioning is 
  recalculated. Default: `1` (i.e., every step).

- **Use Random Seed:**  
  Boolean flag (`0` or `1`). If `0` (default), a random seed is chosen for 
  each run, producing different trajectories. If `1`, a user-supplied random 
  seed is used, giving repeatable results.

- **Random Seed:**  
  Unsigned integer used as the random seed if *Use Random Seed* is set to `1`. 
  Default: `1`.

---

## Hybrid (LSODA)

The Hybrid (LSODA) method is similar to the Hybrid (Runge-Kutta) 
method but uses the LSODA algorithm for integration instead of 
4th-order Runge-Kutta.

### Options for Hybrid (LSODA)

- **Max Internal Steps:**  
  Maximum number of internal steps before reporting. Default: `1000000`.

- **Lower Limit:**  
  Double specifying lower particle limit. Default: `800`.

- **Upper Limit:**  
  Double specifying upper particle limit. Default: `1000`.

- **Runge Kutta Stepsize:**  
  Step size for deterministic (Runge-Kutta) solver. Default: `0.001`.

- **Partitioning Interval:**  
  Steps between partition recalculation. Default: `1`.

- **Use Random Seed:**  
  Flag; `0` (default) for random seed, `1` to use user-supplied seed.

- **Random Seed:**  
  Random seed value (unsigned integer). Default: `1`.

- **Integrate Reduced Model:**  
  Boolean. `1` (default) integrates using mass conservation laws, reducing 
  system variables. `0` to use the full system of ODEs.

- **Relative Tolerance:**  
  Numeric value specifying the desired relative tolerance for the integrator. 
  Default: $1.0 \cdot 10^{-6}$. The smallest achievable is 
  approximately $2.22 \cdot 10^{-16}$.

- **Absolute Tolerance:**  
  Positive numeric value specifying the absolute tolerance. For species, this 
  applies to the concentration. Default: $1.0 \cdot 10^{-12}$.

- **Max Internal Step Size:**  
  Maximum allowed size for internal steps (positive double). Default: `0` (no 
  limit).
