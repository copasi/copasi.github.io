---
layout: structure
title: "Reactions"
structure: "User_Manual"
---

A reaction in COPASI represents a chemical reaction in the model. It consists of substrates, products and optionally
modifiers. The substrates are **consumed** by the reaction, the products are **produced** by the reaction and modifiers influence 
the reaction but are neither **consumed** nor **produced** by it. A reaction has a kinetic rate law which defines how fast
the reaction proceeds. 


Adding reactions in COPASI works much like adding compartments or species. To
add reactions, navigate to the **Reactions** branch in the object tree, which
is found under **Model → Biochemical**. This opens a table with six columns:

- **Index**: The index of the reaction.
- **Name**: The name of the reaction.
- **Equation**: The chemical equation, including any modifiers.
- **Kinetics**: The type of kinetic rate law used by the reaction (dependent on
  the equation).
- **Flux**: The flux through the reaction (this value is calculated by COPASI
  and cannot be set manually).
- **Noise Expression**: if the reaction is a SDE, the noise expression of the 
  reaction will be displayed here. 

The the flux is computed automatically when you
[run a time course simulation](
{{ site.baseurl }}/Support/User_Manual/Tasks/Time_Course_Simulation/).

The simplest way to add a reaction is to enter the chemical equation directly
into an empty "Equation" cell in the table. Pressing the return key after
typing the equation moves the cursor to the next row, allowing you to quickly
add multiple reactions. When you are done entering equations, you "commit" all
the reactions at once.

If any of the reaction equations include species that do not yet exist in the
model, COPASI will add these species automatically. If there is no compartment
yet, COPASI will create one and add all new species to it. If compartments
already exist, new species will be added to the first compartment listed in the
object tree.



<div class="alert alert-warning" role="alert"><span class="glyphicon glyphicon-exclamation-sign"
    aria-hidden="true"></span><span class="sr-only">Warning:</span> When typing reaction equations you should keep
  in mind that species names in COPASI can contain characters like &quot;+&quot; or even white-spaces. Since these
  characters would make it very hard if not impossible to parse the chemical reaction equation, you have to place
  those species names in double quotes. E.g. &quot;Species 1&quot; + &quot;Species 2&quot; -&gt; &quot;Species
  3&quot;. No matter if your species names contain special characters or not, the species names have to be separated
  from the reaction symbols (+, *, =, and -&gt; ) by white-spaces.</div><br />
<br />
<div class="img" align="center">
  <table cellpadding="0" cellspacing="0">
    <tr>
      <td><img alt="" src="Reactions_01.png" style="width:100%" border="0" /></td>
    </tr>
    <tr>
      <td class="mini">Reaction&nbsp;Table&nbsp;with&nbsp;new&nbsp;Entry</td>
    </tr>
  </table>
</div><br />
<br />
Each new reaction gets a default kinetic rate law which is irreversible mass action for reactions that contain a
substrate. For reaction that only have a product (e.g. influx into a system) a constant flux kinetic is
chosen (or `Mass action (reversible)` in case of a reversible reaction).<br />
<br />
<div class="img" align="center">
  <table cellpadding="0" cellspacing="0">
    <tr>
      <td><img alt="" src="Reactions_02.png" style="width:100%" border="0" /></td>
    </tr>
    <tr>
      <td class="mini">Dialog&nbsp;for&nbsp;changing&nbsp;Reaction&nbsp;Parameters</td>
    </tr>
  </table>
</div><br />
<br />
Double clicking on an entry in the table will bring you to another dialog that lets you change certain parameters of
the reaction. You can change the name of the reaction, the chemical equation and whether the reaction is reversible
or not. Changing the chemical equation and the reversibility of a reaction influences the type of kinetics you can
choose for the reaction. Each kinetic function defines how many substrates, products and modifiers it expects.
Additionally it defines whether it can be used for reversible or irreversible reactions only or if it can be used on
either. So depending on how many substrates, products and modifiers your kinetic equation has and whether it is
reversible or not, only a subset of the defined kinetic functions will be available in the Rate Law combo box. If
the kinetic function you want to assign to the reaction is not available yet, you can add it by clicking on the New
Rate Law button (see also <a title="COPASI: Support/User Manual/Model Creation/User Defined Functions"
  href="{{ site.baseurl }}/Support/User_Manual/Model_Creation/User_Defined_Functions/">User Defined Functions</a>).
Depending on the kinetic function you chose, you get a selection of parameters in the table named Symbol Definition,
all functions parameters get a default value of 0.1 which can be changed by clicking into the corresponding cell and
typing a new value.<br />
<br />
Per default all parameters to a kinetic function are local parameters and they exist only in the scope of the rate
law of one reaction. Sometimes it is of advantage to use the same parameter in the rate laws for several reactions.
This way if you want to change to value of this parameter, you only have to change it in once instead of having to
change it in every reaction it occurs in individually. Parameters that can be used in more than one reaction are
called global quantities in COPASI. How you add a global quantity to your model is described in the section called
<a title="COPASI: Support/User Manual/Model Creation/Global Quantities"
  href="{{ site.baseurl }}/Support/User_Manual/Model_Creation/Global_Quantities/">Global Quantities</a>. Let us for
the moment assume you already added such a global quantity to your model and now want to use it in a rate law. Each
parameter in the Symbol Definition table has a check box labeled global. When you check this box, COPASI knows that
the parameter that belongs to it is a global quantity and lets you select one from a list of global quantities that
have been defined in the model. If none have been defined yet, the list contains only an entry termed unknown. In
this case, you will have to define one or more global quantities first and then come back to the reaction where you
want to use it. If the name of the global quantity is set to the <i>unknown</i> term, COPASI will reset the type of
parameter to local if you leave the reaction widget.<br />
<br />
So far we did not go into the details of how chemical equations are to be specified. Chemical equations have a
simple schema. First you state all the substrates separated by &quot;+&quot; characters. Please make sure that you
separate the name of the substrate and the &quot;+&quot; character by at least one space character, otherwise COPASI
will interpret the &quot;+&quot; sign as belonging to the species name. (Having the &quot;+&quot; character as part
of a species name is allowed in COPASI !) after the list of substrates, you specify either an equals (&quot;=&quot;)
character if the reaction is reversible or the character combination &quot;-&gt;&quot; if the reaction is
irreversible. This is followed by the list of products which must also be separated by the &quot;+&quot; character.
Again make sure you have spaces around the separating &quot;+&quot; characters. Optionally this term can be followed
by a semicolon and a list of modifiers which are separated by spaces. Either the list of substrates or the list of
products may also be empty, but at least one of them must be present. Lets look at two examples:<br />
<ol>
  <li> Species A is irreversibly converted into Species B. The chemical equation you would type is &quot;A -&gt;
    B&quot;.
  </li>
  <li> Species A and B are reversibly converted to Species C, the reaction has 2 modifiers C and D. The chemical
    equation for this in COPASI would be: &quot;A + B = C; C D&quot;Note that one of the modifiers is the product!
  </li>
</ol>
<br />
<div class="alert alert-warning" role="alert"><span class="glyphicon glyphicon-exclamation-sign"
    aria-hidden="true"></span><span class="sr-only">Warning:</span> If the reaction takes place in one compartment,
  the reaction kinetic specifies a rate of concentration change, whereas if the reaction takes place in several
  compartments, the kinetic specifies the amount of substance change over time.<br />
  <br />
  E.g. in the reaction A -&gt; B, if A and B are in the same compartment, the kinetic function for the reaction
  returns its result in mol/(l*s). If A and B reside in different compartments, the result is returned in mol/s.
  (This assumes that your default units are set to mol, l and s.)</div><br />
<br />
  