# include("C:/Users/puls446/.julia/dev/InfiniteOpt/test/runtests.jl")

using InfiniteOpt, JuMP
using MathOptInterface
const MOI = MathOptInterface
const MOIU = MathOptInterface.Utilities
using Distributions
# using Ipopt
using Test

include("Utilities.jl")

# Run unit tests
println("-----------------------------------------")
println("----------------UNIT TESTS---------------")
println("-----------------------------------------")
@time @testset "Datatypes" begin include("datatypes.jl") end
println("")
@time @testset "Utilities" begin include("utility_tests.jl") end
println("")
@time @testset "Parameter Methods" begin include("parameters.jl") end
println("")
@time @testset "Optimizer Setup Methods" begin include("optimizer_setup.jl") end
println("")
@time @testset "Variable Methods" begin
    @testset "Basic " begin include("variable_basics.jl") end
    @testset "Info" begin include("variable_info.jl") end
    @testset "Definition" begin include("variable_definition.jl") end
    @testset "Macros" begin include("variable_macros.jl") end
    @testset "Query" begin include("variable_queries.jl") end
end
println("")
@time @testset "Operators" begin include("operators.jl") end
println("")
@time @testset "Expressions" begin include("expressions.jl") end
println("")
@time @testset "Measures" begin include("measures.jl") end
println("")

# TODO add tests for deleting
