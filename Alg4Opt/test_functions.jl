# Appendix B of "Algorithms for Optimization"

module TestFunction
export ackley, booth, branin, flower, michalewicz, rosenbrock, wheeler, circle

using LinearAlgebra

function ackley(x; a=20, b=0.2, c=2π)
    d = length(x)
    return -a * exp(-b * sqrt(sum(x .^ 2) / d)) - exp(sum(cos.(c * xi) for xi in x) / d) + a + exp(1.0)
end

function booth(x)
    return (x[1] + 2x[2] - 7)^2 + (2x[1] + x[2] - 5)^2
end

function branin(x; a=1, b=5.1 / (4π^2), c=5 / π, r=6, s=10, t=1 / (8π))
    return a * (x[2] - b * x[1]^2 + c * x[1] - r)^2 + s * (1 - t) * cos(x[1]) + s
end

function flower(x; a=1, b=1, c=4)
    return a * norm(x) + b * sin(c * atan(x[2], x[1]))
end

function michalewicz(x; m=10)
    return -sum(sin(v) * sin(i * v^2 / π)^2m for (i, v) in enumerate(x))
end

function rosenbrock(x; a=1, b=5)
    (a - x[1])^2 + b * (x[2] - x[1]^2)^2
end

function wheeler(x; a=1.5)
    return -exp(-(x[1] * x[2] - a)^2 - (x[2] - a[1])^2)
end

function circle(x)
    θ = x[1]
    r = 0.5 + 0.5 * (2x[2] / (1 + x[2])^2)
    y1 = 1 - r * cos(θ)
    y2 = 1 - r * sin(θ)
    return [y1, y2]
end

end