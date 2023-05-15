function setup_method(config)
    # Load parameters from the configuration file
    Δx = config["L"]/config["N"]
    Δt = config["Δt"]
    
    # Define the numerical method
    return Vern7(), FiniteDifference{Forward}(Δx), ExplicitRK(0, ExpMidpoint(), Δt)
end
