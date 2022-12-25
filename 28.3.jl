include("Function.jl")

function fib_mem_28(n) #решение 28 с мемоизацией
    if n == 0
        return 1, 0
    else curr, prev = fib_mem_28(n-1)
        return prev + curr, curr
    end
end