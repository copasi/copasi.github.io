---
layout: structure
title: "Deterministic Interpretation of the Model"
structure: "User_Manual"
---


One common mathematical interpretation of a biochemical model in COPASI is to 
represent it as a system of ordinary differential equations (ODEs). In this 
framework, each variable of the ODE system corresponds to the particle number of 
a species in the model.

To construct the right-hand side (RHS) of these differential equations, COPASI 
follows several steps:

1. **Convert Particle Numbers to Concentrations**: The particle numbers are 
   first converted to concentrations. This takes into account the units of 
   substance amount and the compartment volume.

2. **Calculate Reaction Fluxes**: These concentrations are then used to compute 
   the reaction fluxes. The kinetic functions defined in COPASI return either:
   - a *concentration rate* (for single compartment reactions), or
   - an *amount of substance rate* (for multi-compartment reactions).

   For single compartment reactions, the result of the kinetic function is 
   multiplied by the compartment volume to obtain the amount rate. For 
   multi-compartment reactions, the output is already considered to be in amount 
   units (e.g., moles) per unit time.

3. **Convert to Particle Number Rates**: The resulting amount per unit time is 
   multiplied by an appropriate conversion factor to yield particle numbers per 
   unit time.

4. **Combine Stoichiometrically**: Linear combinations of these rates, weighted 
   by the stoichiometries of each species in each reaction, give the net rate 
   of change of particle numbers for all species. These comprise the RHS of the 
   system of ODEs.

---

COPASI also automatically analyzes the model to identify *conserved values*: 
these are linear combinations of particle numbers that remain constant 
throughout the system's time evolution. Each conservation relation can be used 
to eliminate one variable, thereby reducing the system to a smaller set of 
*independent variables*. The remaining variables, called *dependent variables*, 
are expressed as linear combinations of the independent ones. 

COPASI performs this model reduction transparently, while also indicating in the 
graphical interface which species are treated as independent and which as 
dependent. Technically, identifying conservation relations involves finding rows 
in the stoichiometry matrix that are linear combinations of other rows. To 
achieve this, COPASI uses Householder QR factorization 
([Vallabhajosyula06]({{ site.baseurl }}/Support/User_Manual/Bibliography#Vallabhajosyula06)).
