---
layout: structure
title: "Time Course Calculation"
structure: "User_Manual"
---

Time course simulation allows you to calculate the trajectories of species in your
model over a specified time interval. There are several approaches for computing
such trajectories, and depending on your model, one or more of these methods may
be suitable.

COPASI supports three main methodologies for calculating trajectories:

1. **Deterministic simulation:** This method uses the LSODA algorithm  
   (or LSODAR if events are present)  
   [Petzold83]({{ site.baseurl }}/Support/User_Manual/Bibliography#Petzold83).  
   It is generally appropriate for models with large numbers of molecules, where
   random fluctuations are negligible. Additionally, Radau5 is available to be used.

2. **Stochastic simulation:** When systems have small particle numbers, stochastic
   effects can become significant. COPASI offers several stochastic simulation
   methods:
   - **Next reaction method**  
     [Gibson00]({{ site.baseurl }}/Support/User_Manual/Bibliography#Gibson00)
   - **Direct method**  
     [Gillespie76]({{ site.baseurl }}/Support/User_Manual/Bibliography#Gillespie76)
     Only this method supports discrete events.
   - **Tau leaping**  
     [Gillespie01]({{ site.baseurl }}/Support/User_Manual/Bibliography#Gillespie01)
   - **Adaptive SSA**  
     [Cao07]({{ site.baseurl }}/Support/User_Manual/Bibliography#Cao07)

3. **Hybrid methods:** In situations where deterministic simulation is not
   appropriate, but full stochastic simulation is too computationally expensive,
   hybrid methods can be used. These approaches combine the strengths of both
   deterministic and stochastic simulations. COPASI includes several hybrid
   methods that can produce accurate time series where pure deterministic
   approaches would fail, yet remain less demanding than purely stochastic
   simulations. Only the RK-45 method supports discrete events.

4. **Stochastic Differential Equations**: The [stochastic Runge–Kutta (RI5)] integrator
  represents an integration for solving SDEs. This method supports discrete events.

<br />


<div>
{% include toc.html %}
</div>
