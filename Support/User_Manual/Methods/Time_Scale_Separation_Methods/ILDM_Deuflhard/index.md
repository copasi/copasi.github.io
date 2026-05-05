---
layout: structure
title: "ILDM (Deuflhard)"
structure: "User_Manual"
use_math: true
---


The ILDM (Deuflhard) method employs the algorithm developed by Deuflhard and
Heroth (see [Deuflhard96]({{ site.baseurl }}/Support/User_Manual/Bibliography#Deuflhard96),
[Zobeley05]({{ site.baseurl }}/Support/User_Manual/Bibliography#Zobeley05),
[Surovtsova09]({{ site.baseurl }}/Support/User_Manual/Bibliography#Surovtsova09) for details).

### Basic concept of decomposition into "slow" and "fast" modes

The block slow–fast decomposition of the Jacobian is performed in two steps:

- First, a real Schur decomposition yields a block upper triangular matrix.
- Next, the desired decoupled structure of the transformed Jacobian is
  obtained by solving a Sylvester equation.

This basic procedure results in a transformation of the state vectors into new
modes, which can then be separated into slow and fast modes. As a result, the
dynamics of a full reaction system with $n$ ordinary differential equations
(ODEs) is reduced to a differential-algebraic equation (DAE) system consisting
of $n_{\text{slow}}$ ODEs and $n - n_{\text{slow}}$ algebraic equations. The
number $n_{\text{slow}}$ of slow variables is determined iteratively using the
tolerance criterion proposed by Deuflhard and Heroth.

The method implemented in COPASI not only emphasizes the reduction of the
mathematical equations, but also places special focus on reducing the
underlying biochemical network. To achieve this, COPASI analyzes the
transformation matrices obtained after solving the Sylvester equation.

### The implementation in COPASI

The Jacobian is calculated by using finite differences. The Schur
transformation and the solution of the Sylvester equation are carried out using
CLAPACK.

COPASI presents the results in four matrices and four vectors:

- The "Species" matrix shows the contribution of each metabolite to each mode.
- The "Modes" table summarizes the mode distribution for each metabolite.
- The "Slow space" and "Fast space" vectors display the contribution of each
  concentration variable to all slow or fast modes, respectively.
- The "Reactions contributions to modes" and "Reactions distribution between
  modes" matrices are the products of the stoichiometric and transformation
  matrices, normalized by column and row, respectively.
- The "Reactions slow space" and "Reactions fast space" vectors provide the
  contribution of each reaction to the slow and fast spaces.

Metabolites with the largest contribution to the fast space are considered
"fast." Their ordinary differential equations are replaced by the corresponding
algebraic equations (i.e., with the same right-hand side). If a subset of
species contributes only to the fast space (and not the slow space),
time-scale decomposition results in a separation of the reaction network.
Reactions that dominate in the fast modes are classified as fast reactions.
