abstract type DescentMethod end
struct GradientDescent <: DescentMethod
    α
end

init!(M::GradientDescent, f, ∇f, x) = M
function step!(M::GradientDescent, f, ∇f, x)
    α, g = M.α, ∇f(x)
    return x - α * g
end

function f(x)
    return x * x
end

function ∇f(x)
    return 2 * x
end