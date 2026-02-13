---
layout: structure
title: "Importing and Exporting COMBINE archives"
structure: "User_Manual"
---

[COMBINE Archives](https://github.com/combine-org/combine-specifications/blob/main/specifications/omex.md), is a standardized archive format, that can contain a multitude of files. A Manifest in the root directory describes the contents and their file format.

COPASI supports the import and export of COMBINE Archives. 


If you want to try and run the files exported by COPASI with another tools, you might want to try the [BioSimulations website](https://biosimulations.org), this will directly allow you to import the COMBINE archives exported by COPASI.


### Export

Simply run `File\Export Combine Archive`, and select a filename to save the current model under. By default COPASI will export: 

* the current model as COPASI file
* the current model as SBML file (with the default level and version specified in the preferences)
* should the current model contain experimental data, that data will be exported as well (and the paths in the exported COPASI model adjusted)


### Import

Either drag and drop a COMBINE archive onto COPASI to open it, or select `File\Import Combine Archive`.

When COPASI imports a COMBINE archive it will look for files to open in the following order: 

* the default file specified (if supported)
* a COPASI file in the archive
* a SED-ML file in the archive
* a SBML file in the archive

In case there are multiple SED-ML files in the archive, COPASI will ask which one to open.

For more information see the pages on importing [SBML](../Importing_and_Exporting_COMBINE_Archives/) and [SED-ML](../Importing_and_Exporting_SEDML_Files/). 
