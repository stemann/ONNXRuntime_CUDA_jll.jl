# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule ONNXRuntime_CUDA_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("ONNXRuntime_CUDA")
JLLWrappers.@generate_main_file("ONNXRuntime_CUDA", UUID("a13615ec-4c6a-5020-9bdf-9d9993bbd1cf"))
end  # module ONNXRuntime_CUDA_jll
