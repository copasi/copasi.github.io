---
layout: structure
title: "Modified ILDM"
structure: "User_Manual"
---


The modified ILDM (Intrinsic Low-Dimensional Manifold) algorithm, developed by 
our group, is designed to distinguish between "slow" and "fast" metabolites, 
rather than "modes." This approach allows the results of the analysis to be 
formulated directly—without requiring a linear transformation of the reaction 
system.

### The implementation in COPASI

To select fast metabolites, COPASI employs the same numerical technique used in 
the original ILDM (Deuflhard) method: a local Schur decomposition of the 
Jacobian matrix.

The vector referred to as the "fast space" indicates the metabolites that 
contribute most significantly to the fast modes. This information is used to 
suggest the next candidate metabolite, whose designation as "fast" is then 
tested against an error tolerance criterion.

As a result, two matrices and two vectors are produced, describing the 
contribution of each metabolite to slow and fast spaces, respectively. This 
analysis is carried out using Schur transformation matrices. Importantly, the 
resulting sets of slow and fast components now correspond to the actual slow and 
fast metabolites, rather than simply to mathematical modes.
