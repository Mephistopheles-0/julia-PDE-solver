# julia-PDE-solver
This is a Julia file that solves a partial differential equation (PDE) using three parts: (1) setting up the PDE, (2) defining the numerical method for solving the PDE, and (3) running the simulation. I will also explain how to use these three parts and provide an example JSON configuration file.

## Step 1: Setting up the PDE
First, we need to define the PDE we want to solve. We can use the DifferentialEquations.jl package to do this. <code>equation.jl</code> is an example of a setup function that defines a 1D heat equation.
This function takes a configuration file as input and returns an ODEProblem object that specifies the initial conditions, boundary conditions, and PDE to solve.

## Step 2: Defining the numerical method
Next, we need to define the numerical method for solving the PDE. We can use the DifferentialEquations.jl again package for this. <code>function.jl</code> is an example of a function that defines an explicit Runge-Kutta method for solving the heat equation.
This function takes the same configuration file as the setup function and returns a tuple of a time-stepping method, a spatial discretization method, and an integration method.

## Step 3: Running the simulation
Finally, we can run the simulation by combining the PDE problem and the numerical method. We can use the DifferentialEquations.jl package for this as well. <code>solver.jl</code>is the example of a function that runs the simulation.
This function takes the same configuration file as the setup functions and returns the solution to the PDE.

## The configuration <code>.json</code> file (Example)

This file specifies the length of the domain $(L)$, the number of grid points $(N)$, the final time $(T)$, the time step $(\Delta t)$, and the diffusion coefficient $(\alpha)$ for the 1D heat equation. You can modify these parameters to specify different PDEs and numerical methods.

To use the configuration file, you can load it in your main script using the JSON.jl package:

```julia
using JSON

config_file = "config.json"
config = JSON.parsefile(config_file)
```
