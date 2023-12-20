* This is the project-level hspice options file for
* standard load simulations (hspice_stdload_options.inc).
* 
* A copy of this file is placed in every new project. The options are
* added to every HSPICE standard load deck
* (in addition to default_hspice_stdload_options.inc)
*
* Useful options for solving issues (convergence, etc). Uncomment if
* necessary.
*
* Adds a conductance to ground on all nodes.
* Excellent for convergence issues
*.option gshunt=1.0e-9
*
* Sets the maximum allowed timestep. Good for timestep too small issues.
* Can use anything between 1ps - 10ps as needed.
*.option delmax=2ps
*
* Highest accuracy. Replaces .option accurate.
*.option runlvl=6
*
* Adds a conductance in parallel on P/N junctions.
* Also useful for convergence issues.
*.option gmindc=1.0e-12
*
* Also good for convergence issues.
* Can be helpful in circuits that are producing unreasonably large transients.
*.option method=gear

