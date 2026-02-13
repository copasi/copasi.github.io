---
layout: structure
title: "Importing and Exporting SED-ML files"
structure: "User_Manual"
---

The Simulation Experiment Description Markup Language (SED-ML), aims to standardize the exchange of simulation experiments. COPASI does support the import and export of a subset of the features of SED-ML. COPASI uses the [libSEDML](https://github.com/fbergmann/libSEDML) library to read files encoded in this format. 

The main usecase is the exchange of time course experiments, together with what items ought to be plotted, as well as parameter scans. Anything beyond that is not well supported by other tools. 

If you would like to run the files exported by COPASI in another tool, you could try [Tellurium](https://tellurium.analogmachine.org/)

### Export
If you want to export a Time Course, you would first specify and parameterize the Time Course Task (the duration to simulate for and all the algorithm parameters), and then use the Output Assistant to generate the plots you want to have exported. You can of course also specify [plots manually](../../Output/Manual_Definition/Plots/).

Similarly, if you specify a Parameter Scan, and specify output for it, this will be exported in a SED-ML file.

Once the tasks are specified use `File\SED-ML Support\Export SED-ML` and specify the file to save. Note that COPASI will also export an SBML file next to it (naming it `model.xml`, or if that already exists `model{number}.xml`).

### Import

When a SED-ML file is selected by dragging and dropping a file onto COPASI, or specifying `File\SED-ML Support\Import SED-ML`, COPASI will aim to import the simultion experiment in the file. 

It will look for time course tasks and parameter scans from repeated Tasks, along with their figures and import them. 
