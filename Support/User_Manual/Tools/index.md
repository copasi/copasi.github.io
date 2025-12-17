---
layout: structure
title: "Tools"
structure: "User_Manual"
---

The `Tools` menu of COPASI contains a number of useful operations that apply on the whole model.

This page contains an overview over some of them. Additional tools are described in detail below. 

* `Apply Initial State`: resets the current model state to the initial state. 
* `Update initial State from current State `: writes the current model state into the initial state. 
*  [Sliders](/Support/User_Manual/Model_Creation/Sliders/)
* `Merge Added Model`: Used for model merging, as you can add multiple models to your model (using `File\Add to model`), this feature is used to specify which elements in the combined model are the same. So you would use this to merge species and reactions.
* `Create array of compartments`: multiplies the model either in a linear chain, or an rectangular array. You can additionally specify species that diffuse from one compartment to the other.
* `Check Model`: analyzes the model kinetics for inconsistencies. 
* `Convert to irreversible`: replaces reversible reactions, this is required for performing stochastic simulations.
* `Create Events for Timeseries`: Adds the data from time series experiments as events into the model. For an applications see [Piecewise parameter estimation](/Projects/piecewise_parameter_fitting/).
* `Remove SBML Ids from model`: utility function that removes SBML ids from the model. Useful whenever there are non-expressive ids like `species_0` ... `species_10` in the model, and you would like to see more descriptive ones in the next SBML export. 


### Detailed information about other tools

<div class="row">
  <div class="col-xs-12">
{% include toc.html %}
<br />
<br />
  </div>
</div>

