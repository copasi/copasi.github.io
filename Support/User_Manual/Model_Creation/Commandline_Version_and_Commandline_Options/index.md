---
layout: structure
title: "Commandline Version and Commandline Options"
structure: "User_Manual"
---

<div class="row">
  <div class="col-xs-12">

    COPASI comes in two versions. One (CopasiUI) with a GUI for interactive work and one (CopasiSE) without a GUI for
    batch processing of model files. Both versions support the same set of commandline arguments, although some do not
    make sense for the GUI version and will be ignored.<br />
    <br />
    In addition to the commandline options, you can specify one or more COPASI (or Gepasi) files after the commandline
    options which will then be processed. Specifying more than one file again only makes sense for the commandline
    version of COPASI. For each of the files, the activated tasks will be run. The commandline options for importing and
    exporting SBML as well as the --save option are ignored if more than one file is specified. Since the GUI version of
    COPASI can only handle one file at a time, it only makes sense to specify one file after the commandline
    options.<br />
    <br />
    <table class="table table-striped table-hover" style="caption-side: top;">
      <caption>Commandline Options</caption>
      <thead>
        <tr>
          <th scope="col">Option</th>
          <th scope="col">Argument</th>
          <th scope="col">Description</th>
        </tr>
      </thead>
      <colgroup>
        <col width="25%" />
        <col width="10%" />
        <col width="65%" />
      </colgroup>
      <tbody>
      <tr>
        <td>-s, --save </td>
        <td> string value </td>
        <td> This option is used to specify the name file where COPASI should store a model. This is useful
          if you intend to convert some SBML files to COPASI files in a batch job. This also makes sense only for the
          commandline version and will be ignored by the GUI version.</td>
      </tr>
      <tr>
        <td>-i, --importSBML </td>
        <td> string value </td>
        <td> This options lets you specify an SBML file that COPASI shall import.</td>
      </tr>
      <tr>
        <td>-e, --exportSBML </td>
        <td> string value </td>
        <td> With this option you can specify a name for the SBML file COPASI should export. This is useful
          if you want to export some COPASI files to SBML in a batch job. This only makes sense for the commandline
          version and it will be ignored by the GUI version.</td>
      </tr>
      <tr>
        <td>--SBMLSchema </td>
        <td> L1V2, L2V1, L2V2, L2V3, L2V4, L3V1 </td>
        <td> This switch works in combination with the --exportSBML switch and determines which SBML level
          and version is going to be used for SBML export. Currently the following schemas are supported SBML Level 1
          Version 2 (L1V2), SBML Level 2 Version 1 (L2V1), SBML Level 2 Version 2 (L2V2), SBML Level 2 Version 3 (L2V3),
          SBML Level 2 Version 4 (L2V4), and SBML Level 3 Version 1 (L3V1).<br /> <br />If no schema is given, the
          export creates SBML Level 2 Version 4 files.</td>
      </tr>
      <tr>
        <td>--importSEDML </td>
        <td> string value </td>
        <td> This options lets you specify an SEDML file that COPASI shall import.</td>
      </tr>
      <tr>
        <td>--exportSEDML </td>
        <td> string value </td>
        <td> With this option you can specify a name for the SEDML file COPASI should export.</td>
      </tr>
      <tr>
        <td>--importCA </td>
        <td> string value </td>
        <td> This options lets you specify a COMBINE archive file that COPASI shall import.</td>
      </tr>
      <tr>
        <td>--exportCA </td>
        <td> string value </td>
        <td> With this option you can specify a name for the COMBINE archive file COPASI should export.</td>
      </tr>
      <tr>
        <td>--exportBerkeleyMadonna </td>
        <td> string value </td>
        <td> With this option you can specify a name for the Berkeley Madonna file COPASI should export.
          This is useful if you want to export some COPASI files to Berkeley Madonna file format in a batch job. This
          only makes sense for the commandline version and it will be ignored by the GUI version.</td>
      </tr>
      <tr>
        <td>--exportC </td>
        <td> string value </td>
        <td> With this option you can specify a name for the C source file COPASI should export. This is
          useful if you want to export some COPASI files to C source code in a batch job. This only makes sense for the
          commandline version and it will be ignored by the GUI version.</td>
      </tr>
      <tr>
        <td>--exportXPPAUT </td>
        <td> string value </td>
        <td> With this option you can specify a name for the XPPAUT file COPASI should export. This is
          useful if you want to export some COPASI files to XPPAUTs ODE file format in a batch job. This only makes
          sense for the commandline version and it will be ignored by the GUI version.</td>
      </tr>
      <tr>
        <td>-c, --copasidir </td>
        <td> string value </td>
        <td> This specifies the directory where COPASI has been installed. It is needed to find e.g. help
          files. On Windows and Mac OS X this is set automatically. On Linux it has to be specified if you want to use
          certain features. The GUI version of COPASI will issue a warning on startup if this has not been set. The
          commandline version does not need this directory to be specified and therefore ignores this option.</td>
      </tr>
      <tr>
        <td>--exportIni</td>
        <td> string value</td>
        <td>export the parameterization of the model as INI file for use with the --reparameterize
          option.</td>
      </tr>
      <tr>
        <td>-r, --reparameterize</td>
        <td> string value</td>
        <td>Before any task is run, the model is reparameterized with the values specified in the provided INI file.</td>
      </tr>
      <tr>
        <td>--configdir </td>
        <td> string value </td>
        <td> This can be used to specify the directory where COPASI stores its configuration files. Normally
          this is called .copasi and is located in the users home directory. But if you want COPASI to use a different
          one, you can specify it with this switch.</td>
      </tr>
      <tr>
        <td>--configfile </td>
        <td> string value </td>
        <td> This can be used to specify the filename where COPASI loads and stores its configuration.
          Normally this is called COPASI and is located in the directory specified with --configdir. But if you want
          COPASI to use a different filename, you can specify it with this switch.</td>
      </tr>
      <tr>
        <td>--home </td>
        <td> string value </td>
        <td> This can be used to tell COPASI where your home directory is located. Normally you don't have
          to use this.</td>
      </tr>
      <tr>
        <td>-t, --tmp </td>
        <td> string value </td>
        <td> This option can be used to specify a temporary directory where COPASI will auto-save some data
          periodically. Normally COPASI uses the systems temporary directory (e.g. /tmp/ under Linux).</td>
      </tr>
      <tr>
        <td>--report-file</td>
        <td> string value</td>
        <td>Override report file name to be used except for the one defined in the scheduled task.</td>
      </tr>
       <tr>
        <td>--scheduled-task</td>
        <td> string value</td>
        <td>Override the task marked as executable.</td>
      </tr>
      <tr>
        <td>--sedmlTask</td>
        <td> string value</td>
        <td> For specifying the task id to import (and execute) when importing SED-ML or importing
             a COMBINE archive. For a list of all SED-ML tasks use `--printSedMLTasks`.</td>
      </tr>
      <tr>
        <td>--convert-to-irreversible</td>
        <td></td>
        <td>Converts reversible reactions to irreversible ones before running Task.</td>
      </tr>
       <tr>
        <td>--maxTime</td>
        <td> seconds </td>
        <td>The maximal time CopasiSE may run in seconds.</td>
      </tr>
      <tr>
        <td>--license </td>
        <td> </td>
        <td> With this commandline option, COPASI will print its license and exit.</td>
      </tr>
      <tr>
        <td>--nologo </td>
        <td> </td>
        <td> This option suppresses the output of the &quot;Logo&quot; when CopasiSE is run. The
          &quot;Logo&quot; usually consist of the version of COPASI and some license statement.</td>
      </tr>
      <tr>
        <td>--printSedMLTasks</td>
        <td> </td>
        <td> Only print the SED-ML tasks when importing SED-ML or COMBINE archives. </td>
      </tr>
      <tr>
        <td>--validate </td>
        <td> </td>
        <td> This commandline option can be used to validate the given file. The file can either be a COPASI
          file or an SBML file.</td>
      </tr>
      <tr>
        <td>--verbose </td>
        <td> </td>
        <td> This commandline option tells COPASI to print more output on what it is doing to std::out.
        </td>
      </tr>
    </tbody>
    </table>
    <br />
  </div>
</div>

<div markdown="1">

## Examples
The following example assumes that, you have marked a task as
`executable`, and selected `update model`. Now running the model 
using: 

```bash
./CopasiSE input_file.cps -s output_file.cps 
```

will run that scheduled task on the `input_file.cps`. Saving the result 
of the computation as `output_file.cps`. If a report was selected, that report will be writen into the designated file. Or you could specify an
alternative report filename: 

```bash
./CopasiSE input_file.cps -s output_file.cps --report-file report.txt
```
now the report will be written into `report.txt`.

## Importing SED-ML
When importing SED-ML documents (or combine archives, containing a SED-ML document)
it is useful to specify which SED-ML Task should be executed. For that the option
`--printSedMLTasks` can be used to obtain a list of SED-ML tasks contained in the 
loaded file:

```bash 
./CopasiSE input.omex --printSedMLTasks
```
using any of the returned ids, it the corresponding SED-ML task and its first report 
will be imported and marked to be executed. In order to specify where the report should 
be saved, the `--report-file` option should be used: 

```bash
./CopasiSE input.omex --sedmlTask repTsk_0_0_0 --report-file report.txt
```

the `--verbose` option can be used to verify the which task, model and report will be 
generated.

</div>