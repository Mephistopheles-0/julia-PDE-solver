function run_simulation(config)
    # Set up the PDE problem
    prob = setup_pde(config)
    
    # Set up the numerical method
    timestepper, spatialdiscretizer, integrator = setup_method(config)
    
    # Set up the solver
    solver = MethodOfLines(prob, timestepper, spatialdiscretizer, integrator)
    
    # Solve the PDE
    solution = solve(solver, saveat=config["Δt"])
    
    # Return the solution
    return solution
end