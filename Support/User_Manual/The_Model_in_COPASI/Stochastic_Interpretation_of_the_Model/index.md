---
layout: structure
title: "Stochastic Interpretation of the Model"
structure: "User_Manual"
use_math: true
---


An alternative way to interpret a model in COPASI is as a stochastic process. In 
this context, reaction kinetics do not represent the rates of change in species 
concentrations. Instead, they specify the probability that a reaction event 
occurs. When a reaction event takes place, the particle numbers of the involved 
species are updated based on their stoichiometries. As a result, particle 
numbers are always integers and change in discrete steps.

The value of the kinetic function is interpreted as a *propensity*, which is a 
differential probability density indicating the likelihood that a reaction event 
will happen within the next infinitesimal time interval. However, there are 
subtle differences between reaction rates and propensities. For example, this 
difference becomes important for small particle numbers. The rate of a second 
order mass action reaction is expressed as 
$k \left(\frac{S}{V}\right)^{2}$, whereas the propensity for the same reaction 
is $k \, \frac{S}{V} \, \frac{S-1}{V}$. COPASI applies these types of 
corrections automatically. If you have already manually included such 
corrections in your model, you must instruct COPASI not to apply them a 
second time. Instructions for this can be found in the 
[general model settings]({{ site.baseurl }}/Support/User_Manual/Model_Creation/General_Model_Settings/).

Another important point to consider is that enzymatic reaction rate laws derived 
from the steady state approximation are not always valid for stochastic 
simulations. While often applicable, the assumptions made in their derivation 
do not exactly match those for deterministic simulations.
