include("Function.jl")

function fib_unrec_28(n) #решение 28 без рекурсии
    v = [1, 1]
    for i in 3:n
        push!(v, v[i-1] + v[i-2])
    end
    return v[n]
end