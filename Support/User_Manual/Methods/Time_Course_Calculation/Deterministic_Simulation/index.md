---
layout: structure
title: "Deterministic Simulation"
structure: "User_Manual"
use_math: true
---


The default methods in COPASI for time course calculations are LSODA and
LSODAR [[Petzold83]({{ site.baseurl }}/Support/User_Manual/Bibliography#Petzold83)].
Both of these methods are part of the [ODEPACK](http://www.netlib.org/odepack/opkd-sum)
library [[Hindmarsh83]({{ site.baseurl }}/Support/User_Manual/Bibliography#Hindmarsh83)].
LSODA, developed by Linda R. Petzold and Alan C. Hindmarsh, is capable of
solving systems of the form $\frac{dy}{dt} = f(t, y)$ using either a dense
or banded Jacobian when the system is stiff. Notably, LSODA automatically
selects between non-stiff (Adams) and stiff (BDF) integration methods. By
default, it begins with the non-stiff algorithm and dynamically tracks the
system to determine if and when to switch to the stiff method.
LSODAR extends LSODA by adding root-finding capabilities, enabling the
accurate detection of the exact time when [events]({{ site.baseurl }}/Support/User_Manual/Model_Creation/Events/)
occur. COPASI automatically chooses the appropriate method based on the
problem at hand.

#### Options for LSODA

- **Integrate Reduced Model**
  This boolean parameter specifies whether integration should use mass
  conservation laws (thereby reducing the number of system variables) or
  the complete model. When checked (`true`), this tells COPASI to utilize
  mass conservation laws. Otherwise (`false`) COPASI will determine all
  variables directly from the ODEs.

- **Relative Tolerance**
  This numeric parameter defines the desired relative tolerance for the
  simulation. Smaller values result in a more accurate trajectory. The
  default value is $1.0 \cdot 10^{-6}$. The smallest achievable relative
  tolerance is approximately $2.22 \cdot 10^{-16}$.

- **Absolute Tolerance**
  A positive numeric value that sets the desired absolute tolerance. For
  chemical species, this tolerance applies to concentration values. The
  default is $1.0 \cdot 10^{-12}$.

- **Max Internal Steps**
  A positive integer indicating the maximum number of internal steps the
  integrator can perform before the next output time. The default is
  `10000`.

- **Max Internal Step Size**
  A positive floating-point value that limits the maximum size of an
  internal integration step. The default value is `0`, which means no
  limit is enforced.


### Radau5

In addition to LSODA, COPASI provides the option to integrate systems of 
ODEs using the Radau5 integrator. Radau5 is especially well-suited for 
stiff systems, as it is an implicit Runge-Kutta method of order 5. 
This integrator is part of the library developed by Ernst Hairer 
[Hairer, E., & Wanner, G. (1996). *Solving Ordinary Differential 
Equations II: Stiff and Differential-Algebraic Problems* (Vol. 14). 
Springer.](https://doi.org/10.1007/978-3-662-09947-6). Note, however, 
that Radau5 does not support the simulation of events.

#### Options for Radau5

- **Integrate Reduced Model**
  This boolean parameter determines whether integration should use mass 
  conservation laws (thus reducing the number of system variables) or use 
  the complete model. When set to `true` (the default), COPASI applies 
  mass conservation laws. When set to `false`, COPASI determines all 
  variables directly from the ODEs.

- **Relative Tolerance**
  Specifies the relative tolerance for the simulation as a numeric value. 
  Lower values increase the accuracy of the calculated trajectory. The 
  default value is $1.0 \cdot 10^{-4}$.

- **Absolute Tolerance**
  A positive numeric value specifying the absolute tolerance for the 
  simulation. For species, this tolerance is applied to concentration 
  values. The default value is $1.0 \cdot 10^{-6}$.

- **Max Internal Steps**
  A positive integer indicating the maximum number of internal steps the 
  integrator is allowed to take before the next output time. The default 
  value is `1000000000`.

- **Initial Step Size**
  A positive floating-point value specifying the initial size of internal 
  integration steps. The default value is `0.001`.
