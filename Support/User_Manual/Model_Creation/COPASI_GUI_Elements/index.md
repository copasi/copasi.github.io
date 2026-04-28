---
layout: structure
title: "COPASI GUI Elements"
structure: "User_Manual"
---

<div class="row">
  <div class="col-xs-12">

    <br />
    <div class="img" align="center">
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td><img alt="A screenshot of the main window of the COPASI Apple OS X version. It is divided horizontally in two major areas: on the left a hierarchical menu with major sections Model, Tasks, Output Specifications, Functions, and Units. On the left a wider section containing the COPASI logo, the version number (4.28, Build 226), a message saying the use of this software indicates the acceptance of the attached license, and a button on the bottom right for viewing the license. Above these two major sections, there is a toolbar with icons and a selection box indicating Concentrations." src="Layout_01.png" style="width:100%" border="0" /></td>
        </tr>
        <tr>
          <td class="mini">Elements&nbsp;of&nbsp;the&nbsp;COPASI&nbsp;User&nbsp;Interface.</td>
        </tr>
      </table>
    </div>
    
  </div>
</div>

The COPASI graphical user interface is organized into four main elements.

At the top of the main window is the menu bar (on macOS, it appears at the very 
top of the screen). Just below is a toolbar, which provides quick access to 
common actions, such as opening or saving files. The remainder of the window is 
vertically split into two sections by a movable divider. You can adjust the size 
of these sections by dragging the divider.

On the left side is the object tree. This panel displays the current model as 
well as the tasks you can perform. Selecting an item in the object tree changes 
the view in the right section, allowing you to edit model components or modify 
and run specific tasks.

When you start COPASI without any command-line arguments, it opens with a new 
model. The root element of the object tree is selected by default, and the right 
side of the window displays the COPASI logo.

The object tree has five primary branches under its root:
  1. **Model**: Contains all objects that belong to the current model.
  2. **Tasks**: Lists all tasks that COPASI can execute.
  3. **Output Specifications**: Contains different output objects COPASI can handle.
  4. **Functions**: Shows all (kinetic) functions available, including built-in and 
     user-defined functions.
  5. **Units**: Contains all unit definitions.

If you click on the *Model* branch in the object tree, the right panel updates to 
let you change [model settings](
{{ site.baseurl }}/Support/User_Manual/Model_Creation/General_Model_Settings/).
In the next sections, we'll describe each dialog available via the object tree. 
You'll also learn how to create models and run tasks in COPASI, such as 
calculating a trajectory.
