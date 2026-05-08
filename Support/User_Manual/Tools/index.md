---
layout: structure
title: "Tools"
structure: "User_Manual"
---

The `Tools` menu of COPASI contains a number of useful operations that apply on the whole model.

This page contains an overview over some of them. Additional tools are described in detail below. 

* `Apply Initial State`: resets the current model state to the initial state. 

  The **Apply Initial State** tool resets the current model state in COPASI to the
  predefined initial state. For example, after running a time course simulation,
  the model’s current state (such as the concentrations of all species) will
  reflect the end point of the simulation. Using this tool restores all model
  quantities to their initial values, as originally specified.

* `Update initial State from current State `: writes the current model state into the initial state. 

  The **Update Initial State from Current State** tool overwrites the model's
  initial state with the current state. For instance, if you have performed a
  simulation and the current concentrations have changed, using this tool will set
  the initial values to match these new values. This is useful if you want future
  tasks to start from the current model’s state. Note that many tasks also offer
  an “Update model” checkbox; if this option is enabled, COPASI will
  automatically update the initial state with the current state when the task
  finishes.

* [Sliders](/Support/User_Manual/Model_Creation/Sliders/) used to interact with the model, and 
  directly experience what influence parameters have on the model behavior.

* `Merge Added Model`: Used for [model merging](./MergeAddedModel/), as you can add multiple models to your model (using `File\Add to model`), this feature is used to specify which elements in the combined model are the same. So you would use this to merge species and reactions.

* `Create array of compartments`: multiplies the model either in a linear chain, or an rectangular array. You can additionally specify species that diffuse from one compartment to the other.

  COPASI provides support for working with arrays of compartments—this means you
  can take an existing model and replicate it either as a linear chain or as a
  rectangular array of compartments.

  For example, to set up an array, open the Brusselator example file (from the
  menu: **File → Examples → Copasi files → bruesselator.cps**). Suppose you want
  to simulate this model in a linear chain of 15 cells, with species X and Y
  diffusing between cells. To do so, use the **Create array of compartments** tool
  and select the compartment as well as X and Y. Choose "Linear chain" as the
  arrangement and enter 14 (to add 14 new compartments). COPASI then creates the
  additional compartments and automatically adds diffusion reactions between each
  neighboring pair. By default, diffusion parameters are set to 1.

  To visualize and analyze the resulting dynamics, you can use BasiCO, a Python
  interface for COPASI. Refer to the BasiCO documentation for an [example on arrays
  of compartments](https://basico.readthedocs.io/en/latest/notebooks/Arrays_of_Compartments.html).

* `Check Model`: analyzes the model kinetics for inconsistencies. 

* `Convert to irreversible`: replaces reversible reactions, this is required for performing stochastic simulations.

* `Create Events for Timeseries`: Adds the data from time series experiments as events into the model. For an applications see [Piecewise parameter estimation](/Projects/piecewise_parameter_fitting/).

* `Remove SBML Ids from model`: utility function that removes SBML ids from the model. Useful whenever there are non-expressive ids like `species_0` ... `species_10` in the model, and you would like to see more descriptive ones in the next SBML export. 

### Detailed information about other tools

<div class="row">
  <div class="col-xs-12">
    {% include toc.html %}
  </div>
</div>

