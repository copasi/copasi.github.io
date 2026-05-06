---
layout: structure
title: "Lyapunov Exponents Calculation"
structure: "User_Manual"
---

COPASI can calculate Lyapunov exponents along a trajectory, as well as the
average divergence of the system. These exponents are determined for the
reduced system (see [Interpretation of the Model]({{ site.baseurl }}/Support/User_Manual/The_Model_in_COPASI/Deterministic_Interpretation_of_the_Model/)),
so the maximum number of exponents corresponds to the number of independent
variables. If you request fewer exponents, COPASI will compute the largest
ones.

COPASI implements a well-established algorithm
[[Shimada79]({{ site.baseurl }}/Support/User_Manual/Bibliography#Shimada79),
[Benettin80]({{ site.baseurl }}/Support/User_Manual/Bibliography#Benettin80)]
that was originally implemented in FORTRAN by Wolf et al.
[[Wolf85]({{ site.baseurl }}/Support/User_Manual/Bibliography#Wolf85)]. This
algorithm integrates one reference trajectory and, simultaneously, N difference
trajectories (where N is the number of requested exponents) in a system
linearized around the reference path. Integration is performed over a short
"orthonormalization interval." After each interval, the difference vectors are
reorthonormalized. The exponents for each interval are calculated based on how
the difference trajectories diverge or converge relative to the reference
trajectory. This process is repeated, and the local exponents are averaged over
the entire trajectory.

If requested, the divergence is calculated as the average trace of the Jacobian
matrix. For consistency, the divergence is evaluated over the same
orthonormalization intervals used for the Lyapunov exponents, which allows for
local comparison between divergence and exponents.

If you are only interested in the final result for the Lyapunov exponents and
the average divergence, you can use COPASI's default report or view the results
in the GUI. To create customized report templates containing the Lyapunov
exponents and divergence, these options are found under "Results." For access
to the "local" estimates for each orthonormalization interval, you need to
define a plot or report manually. In this version of COPASI, use the "expert"
feature in the object selection dialog to reach the exponents, which appear in
the "Lyapunov Exponents" branch under "Task List." After each
reorthonormalization interval, output can provide up to the ten largest
exponents—both the local value from the last interval and the running average
across all previous intervals. Similarly, the divergence can be output for the
last interval or as an overall average.

The Jacobian used for both Lyapunov exponents and divergence computations is
approximated using finite differences. Integration of the reference and
difference trajectories uses the LSODA integrator
[[Hindmarsh83]({{ site.baseurl }}/Support/User_Manual/Bibliography#Hindmarsh83)].

### Options for Lyapunov Exponents Calculation

- **Orthonormalization interval:**  
  This is the time interval after which orthonormalization of the difference
  trajectories occurs. This setting is critical for accurate Lyapunov exponent
  calculation. Smaller values usually yield more accurate results but require
  longer calculation times, as numerical integration is restarted more often
  for shorter intervals. To check if this parameter is adequate, compare the
  sum of the exponents to the divergence of the system; these should match if
  all exponents are calculated. Since divergence is robust, a mismatch usually
  indicates a need for a shorter interval. Note that this parameter most
  strongly affects the accuracy of the largest-magnitude exponents. Because
  large positive exponents are rare, the most negative exponents are
  particularly sensitive. If you do not need exact values for strongly negative
  exponents, you can select a larger interval for faster computation. The
  default is `1.0`.

- **Overall time:**  
  This parameter specifies the total duration for the calculation. Integration
  will repeat in steps determined by the "orthonormalization interval" until
  the overall time is reached. This value is also important for exponent
  accuracy. Since COPASI cannot estimate how quickly the exponents converge,
  **no universally safe default** can be provided for this parameter. As an
  indicator, if the system does not reach steady state, one exponent should be
  zero. If this does not occur, the overall time is probably too short to allow
  the exponents to converge. The default is `1000`.

Other options relevant for the calculation are related to the LSODA numerical
integrator. These are described in the section on
[deterministic simulation]({{ site.baseurl }}/Support/User_Manual/Methods/Time_Course_Calculation/Deterministic_Simulation/).
