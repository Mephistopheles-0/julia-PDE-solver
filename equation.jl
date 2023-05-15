using DifferentialEquations

function setup_pde(config)
    # Load parameters from the configuration file
    L = config["L"]
    N = config["N"]
    tspan = (0.0, config["T"])
    α = config["α"]
    
    # Define the PDE
    function heat_eq(du, u, p, t)
        D = α/L^2
        for i in 2:N-1
            du[i] = D*(u[i-1] - 2*u[i] + u[i+1])
        end
        du[1] = du[N] = 0.0
    end
    
    # Set up the initial conditions and boundary conditions
    u0 = zeros(N)
    u0[round(Int, N/2)] = 1.0
    
    bcs = (u0[1], u0[N])
    
    # Return the problem specification
    return ODEProblem(heat_eq, u0, tspan, [])
end
