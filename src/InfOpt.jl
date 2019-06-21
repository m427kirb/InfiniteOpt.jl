module InfOpt

# Import the necessary packages.
import JuMP
import MathOptInterface
const MOI = MathOptInterface
import Distributions

# Import all of the datatpyes, methods, macros, and definitions.
include("datatypes.jl")
include("parameters.jl")
include("variables.jl")
include("expressions.jl")
include("measures.jl")
include("operators.jl")
include("constraints.jl")
include("objective.jl")
include("macros.jl")
include("transcribe.jl")
include("show.jl")
include("utilities.jl")

# Export model object datatype
export InfiniteModel

# Export macros and constants
export @infinite_variable, @point_variable, @global_variable, @infinite_parameter,
Infinite, Global, Point

# Export infinite parameter datatypes
export InfOptParameter, ParameterRef

# Export variable datatypes
export InfOptVariable, InfiniteVariable, PointVariable, GlobalVariable,
GeneralVariableRef, InfiniteVariableRef, MeasureFiniteVariableRef,
FiniteVariableRef, PointVariableRef, GlobalVariableRef, InfOptVariableRef

# Export infinite parameter set types
export AbstractInfiniteSet, IntervalSet, DistributionSet

# Export infinite parameter methods
export build_parameter, add_parameter, infinite_set, set_infinite_set,
num_parameters, parameter_by_name, all_parameters, num_supports, has_supports,
set_supports, add_supports, delete_supports, supports, used_by_constraint,
used_by_measure, used_by_variable, is_used, group_id, is_correlated

# Export variable methods
export used_by_objective, get_infinite_variable_ref, get_parameter_refs,
set_parameter_refs, add_parameter_ref

# Export constraint datatypes
export GeneralConstraintRef, InfiniteConstraintRef, MeasureConstraintRef,
FiniteConstraintRef

# Export measure datatypes
export AbstractMeasureData, DiscreteMeasureData, MultiDiscreteMeasureData,
Measure, MeasureRef

# Export measure methods
export add_measure, measure, measure_function, measure_data

# Export transcription methods
export generate_transcribed_model

end # module
