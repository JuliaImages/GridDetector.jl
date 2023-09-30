using PrecompileTools

@setup_workload begin
    @compile_workload begin
        hello_world()
    end
end