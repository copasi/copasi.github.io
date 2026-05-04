---
layout: structure
title: "Stochastic Simulation"
structure: "User_Manual"
use_math: true
---


### The Direct Method

This stochastic simulation method implements Gillespie's direct method 
as described in [Gillespie76]({{ site.baseurl }}/Support/User_Manual/Bibliography#Gillespie76).

Support for discrete events has been added to this method.

#### Options for the Direct Method

- **Max Internal Steps**  
  Specifies the maximum number of internal steps the integrator may take 
  before the next reporting time. Must be a positive integer. Default: 
  `1000000`.

- **Use Random Seed**  
  Can be `0` or `1`. If set to `0` (default), a random seed is chosen 
  before each simulation run, so the results differ between runs. If set 
  to `1`, the specified random seed is used, and runs with the same seed 
  will produce identical results.

- **Random Seed**  
  An unsigned integer used as the random seed if "Use Random Seed" is set 
  to `1`. Default value is `1`.

---

### The Next-Reaction Method

This stochastic simulation method uses the algorithm developed by Gibson and 
Bruck [[Gibson00]({{ site.baseurl }}/Support/User_Manual/Bibliography#Gibson00)]. 
For each reaction, a tentative stochastic reaction time is calculated, and the 
reaction with the shortest reaction time is executed. All reactions are 
organized in a priority queue to efficiently find the fastest reaction. 
Additionally, a dependency graph is used so that only those reaction times 
affected by the executed reaction need to be recalculated at each step.

**Note:** This simulation method requires all reactions to be irreversible. 
COPASI provides a tool that can convert all reversible reactions to irreversible 
ones. The algorithm operates on discrete particle numbers rather than 
concentrations, and particle numbers in the system must not exceed 
$2^{64}-1$ (approximately $1.84 \cdot 10^{19}$).

The current implementation of the Next-Reaction Method is inefficient for models 
containing assignment rules, leading to increased calculation times.

There are also some restrictions with global quantities:
- If a global quantity is defined by a differential equation (type "ode"), the 
  model cannot be simulated stochastically in the current COPASI version.
- If the global quantity is of type "assignment", stochastic simulation is 
  possible but less efficient than for models without assignments.
- No restrictions apply for "fixed" global quantities.

#### Options for the Next-Reaction Method

- **Max Internal Steps**  
  Specifies the maximum number of internal steps the integrator may take before 
  the next reporting time. Must be a positive integer. Default: `1000000`.

- **Subtype**  
  This parameter is ignored in the current version of COPASI.

- **Use Random Seed**  
  Can be `0` or `1`. If set to `0` (default), a random seed is chosen before 
  each simulation run, so the results differ between runs. If set to `1`, the 
  specified random seed is used, and runs with the same seed will produce 
  identical results.

- **Random Seed**  
  An unsigned integer used as the random seed if "Use Random Seed" is set to `1`. 
  Default value is `1`.

---

### The &tau;-leap Method

This stochastic simulation method implements the &tau;-leap method as 
described in [Gillespie01]({{ site.baseurl }}/Support/User_Manual/Bibliography#Gillespie01).

#### Options for the &tau;-leap Method

- **Max Internal Steps**  
  Specifies the maximum number of internal steps the integrator may take 
  before the next reporting time. Must be a positive integer. Default: 
  `10000`.

- **Use Random Seed**  
  Can be `0` or `1`. If set to `0` (default), a random seed is chosen 
  before each simulation run, so the results differ between runs. If set 
  to `1`, the specified random seed is used, and runs with the same seed 
  will produce identical results.

- **Random Seed**  
  An unsigned integer used as the random seed if "Use Random Seed" is set 
  to `1`. Default value is `1`.

---

### The Adaptive SSA/&tau;-leap Method

This stochastic simulation method implements the Adaptive SSA/&tau;-leap 
method as described in [Cao07]({{ site.baseurl }}/Support/User_Manual/Bibliography#Cao07).

#### Options for the Adaptive SSA/&tau;-leap Method

- **Max Internal Steps**  
  Specifies the maximum number of internal steps the integrator may take 
  before the next reporting time. Must be a positive integer. Default: 
  `10000000`.

- **Use Random Seed**  
  Can be `0` or `1`. If set to `0` (default), a random seed is chosen 
  before each simulation run, so the results differ between runs. If set 
  to `1`, the specified random seed is used, and runs with the same seed 
  will produce identical results.

- **Random Seed**  
  An unsigned integer used as the random seed if "Use Random Seed" is set 
  to `1`. Default value is `1`.
