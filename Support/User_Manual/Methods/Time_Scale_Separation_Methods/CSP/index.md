---
layout: structure
title: "CSP"
structure: "User_Manual"
---

The **Computational Singular Perturbation (CSP)** methodworks by decomposing the
dynamics of a system into fast and slow modes. 

By analyzing eigenvalue-like properties of the transformed system, CSP identifies:

- **The number of fast modes** present at each point in time,
- **Which species** are dominant within these fast modes,
- **Which reactions** are primarily responsible for driving fast versus slow dynamics.

CSP also provides several biologically interpretable diagnostic indices:

- **Radical Pointer (RP):** Identifies species that are good candidates for quasi-steady-state (QSS) elimination (i.e., species to which the QSSA can be applied).
- **Participation Index (PI):** Highlights reactions that behave in a quasi-equilibrium (QE) manner.
- **Importance Index (II):** Measures the extent to which each reaction influences the dynamics of each species.

These indices help modelers to determine which species or reactions could potentially be simplified, removed, or combined within the model.


_Reference:_  
Surovtsova, I., Simus, N., Hübner, K. et al. Simplification of biochemical 
models: a general approach based on the analysis of the impact of individual 
species and reactions on the system's dynamics. **BMC Syst Biol 6**, 14 (2012).  
[https://doi.org/10.1186/1752-0509-6-14](https://doi.org/10.1186/1752-0509-6-14)